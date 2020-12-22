/* -*- Mode:C++; c-file-style:"gnu"; indent-tabs-mode:nil; -*- */
/**
 * Copyright (c) 2011-2015  Regents of the University of California.
 *
 * This file is part of ndnSIM. See AUTHORS for complete list of ndnSIM authors and
 * contributors.
 *
 * ndnSIM is free software: you can redistribute it and/or modify it under the terms
 * of the GNU General Public License as published by the Free Software Foundation,
 * either version 3 of the License, or (at your option) any later version.
 *
 * ndnSIM is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
 * PURPOSE.  See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * ndnSIM, e.g., in COPYING.md file.  If not, see <http://www.gnu.org/licenses/>.
 **/

#include "ndn-net-device-face.hpp"
#include "ndn-l3-protocol.hpp"

#include "ndn-ns3.hpp"

#include "ns3/net-device.h"
#include "ns3/log.h"
#include "ns3/packet.h"
#include "ns3/node.h"
#include "ns3/pointer.h"

// #include "ns3/address.h"
#include "ns3/point-to-point-net-device.h"
#include "ns3/channel.h"

#include "../utils/ndn-fw-hop-count-tag.hpp"

#include "apps/ndn-file-consumer-cbr.hpp"
#include "ns3/application.h"
#include "../utils/ndn-fw-bij-tag.hpp"
#include "../utils/ndn-fw-capacity-tag.hpp"
#include "../utils/ndn-fw-link-price-tag.hpp"
#include "../utils/ndn-fw-face-id-tag.hpp"
#include "ns3/simulator.h"
#include "ns3/queue.h"

NS_LOG_COMPONENT_DEFINE("ndn.NetDeviceFace");

namespace ns3 {
namespace ndn {
std::string fileName = "price_linkuse.txt"; //by cxy
std::ofstream out(fileName);

NetDeviceFace::NetDeviceFace(Ptr<Node> node, const Ptr<NetDevice>& netDevice)
  : Face(FaceUri("netDeviceFace://"), FaceUri("netDeviceFace://"))
  , m_node(node)
  , m_netDevice(netDevice)
  , m_dataRate(1)
  , m_bitrate(0)
{
  NS_LOG_FUNCTION(this << netDevice);
	  
  Ptr<ns3::PointToPointNetDevice> nd1 = netDevice->GetObject<ns3::PointToPointNetDevice>();
  DataRateValue dv;
  nd1->GetAttribute("DataRate", dv);
  DataRate d = dv.Get();
  m_capacity = d.GetBitRate()/pow(10,6);
  m_price = 1/m_capacity;

  setMetric(1); // default metric

  NS_ASSERT_MSG(m_netDevice != 0, "NetDeviceFace needs to be assigned a valid NetDevice");

  m_node->RegisterProtocolHandler(MakeCallback(&NetDeviceFace::receiveFromNetDevice, this),
                                  L3Protocol::ETHERNET_FRAME_TYPE, m_netDevice,
                                  true /*promiscuous mode*/);
}

NetDeviceFace::~NetDeviceFace()
{
  NS_LOG_FUNCTION_NOARGS();
  close();
}

void
NetDeviceFace::close()
{
  m_node->UnregisterProtocolHandler(MakeCallback(&NetDeviceFace::receiveFromNetDevice, this));
  this->fail("Close connection");
}

Ptr<NetDevice>
NetDeviceFace::GetNetDevice() const
{
  return m_netDevice;
}

void
NetDeviceFace::send(Ptr<Packet> packet)
{
  NS_ASSERT_MSG(packet->GetSize() <= m_netDevice->GetMtu(),
                "Packet size " << packet->GetSize() << " exceeds device MTU "
                               << m_netDevice->GetMtu());

  FwHopCountTag tag;
  packet->RemovePacketTag(tag);
  tag.Increment();
  packet->AddPacketTag(tag);

  m_netDevice->Send(packet, m_netDevice->GetBroadcast(), L3Protocol::ETHERNET_FRAME_TYPE);
}

void
NetDeviceFace::sendInterest(const Interest& interest)
{
  NS_LOG_FUNCTION(this << &interest);

  this->emitSignal(onSendInterest, interest);

  Ptr<Packet> packet = Convert::ToPacket(interest);
  m_pprequeue = 10;
  send(packet);
}

void
NetDeviceFace::sendData(const Data& data)
{
  NS_LOG_FUNCTION(this << &data);

  /*
    Estimate the transmission bit rate
  */
  if(m_dataRate.size()<5)
    m_dataRate.push_back(Simulator::Now().ToDouble(Time::S));
  else
  {
    m_dataRate.erase(m_dataRate.begin());
    m_dataRate.push_back(Simulator::Now().ToDouble(Time::S));
  }
	
  m_bitrate = (m_dataRate.size()-1)*m_netDevice->GetMtu()*pow(2,3)/((m_dataRate.back() - m_dataRate.front())*pow(10,6));
  double temp_price = m_price + pow(10,-3)*(m_bitrate-1.1*m_capacity);
  out << Simulator::Now().ToDouble(Time::S) << "\t" << m_node->GetId() << "\t" <<this->getId() << "\t" << m_bitrate << "\t" << temp_price << std::endl;
	
  if(temp_price < 0)
    m_price = 0;
  else
    m_price = temp_price;

  this->emitSignal(onSendData, data);

  Ptr<Packet> packet = Convert::ToPacket(data);

  FwCapacityTag ctag;
  packet->RemovePacketTag(ctag);
  if(ctag.isEmpty())
  {
    ctag.Set(m_capacity);
  }
  else
  {
    if(ctag.GetCapacity()>m_capacity)
      ctag.Set(m_capacity);
  }
  packet->AddPacketTag(ctag);
  
  FwHopCountTag fwtag;
  packet->RemovePacketTag(fwtag);
  int hopcount = fwtag.Get();
  packet->AddPacketTag(fwtag);

  if(m_node->GetNApplications())
  {
    if(m_node->GetId())
    {
      double m_nowtime = ns3::Simulator::Now().GetSeconds();
      FwBijTag ntag;
      packet->RemovePacketTag(ntag);
      if(ntag.isEmpty())
        ntag.Setbij(m_nowtime);
      packet->AddPacketTag(ntag);
      
      FwFaceIdTag fitag;
      packet->RemovePacketTag(fitag);
      fitag.Set(m_node->GetId());
      packet->AddPacketTag(fitag);
    }
  }

  send(packet);
}

// callback
void
NetDeviceFace::receiveFromNetDevice(Ptr<NetDevice> device, Ptr<const Packet> p, uint16_t protocol,
                                    const Address& from, const Address& to,
                                    NetDevice::PacketType packetType)
{
  NS_LOG_FUNCTION(device << p << protocol << from << to << packetType);

  Ptr<Packet> packet = p->Copy();
  try {
    uint32_t type = Convert::getPacketType(p);
    if (type == ::ndn::tlv::Interest) {
      shared_ptr<const Interest> i = Convert::FromPacket<Interest>(packet);
      this->emitSignal(onReceiveInterest, *i);
    }
    else if (type == ::ndn::tlv::Data) {
	  FwBijTag tag;
    FwFaceIdTag fitag;
    if(packet->RemovePacketTag(tag))
	  {
      packet->RemovePacketTag(fitag);
      double m_nowtime = ns3::Simulator::Now().GetSeconds();
		  double m_passtime = tag.Get();
      uint32_t FaceId = fitag.Get();
      std::map<uint32_t,double>::iterator iter = m_delayMap.find(FaceId);
      if(iter != m_delayMap.end())
        m_delayMap[FaceId] = m_nowtime-m_passtime;
      else
        m_delayMap.insert(pair<uint32_t, double>(FaceId, m_nowtime-m_passtime));
      
      std::map<uint32_t, double>::iterator iter1;
      iter1 = m_delayMap.begin();
      double tempValue = 0;
      while(iter1 != m_delayMap.end())
      {
        if(iter1->first)
          tempValue = tempValue + 1/(iter1->second);
        iter1++;
      }
      m_facebij = tempValue;
      packet->AddPacketTag(tag);
      packet->AddPacketTag(fitag);
	  }
      shared_ptr<const Data> d = Convert::FromPacket<Data>(packet);
      this->emitSignal(onReceiveData, *d);
    }
    else {
      NS_LOG_ERROR("Unsupported TLV packet");
    }
  }
  catch (::ndn::tlv::Error&) {
    NS_LOG_ERROR("Unrecognized TLV packet");
  }
}

} // namespace ndn
} // namespace ns3
