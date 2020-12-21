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

// ndn-simple.cpp

#include "ns3/core-module.h"
#include "ns3/network-module.h"
#include "ns3/point-to-point-module.h"
#include "ns3/ndnSIM-module.h"

namespace ns3 {
/**
 * This scenario simulates a very simple network topology:
 *
 *
 *      +----------+     1Mbps      +--------+     1Mbps      +----------+
 *      | consumer | <------------> | router | <------------> | producer |
 *      +----------+         10ms   +--------+          10ms  +----------+
 *
 *
 * Consumer requests data from producer with frequency 10 interests per second
 * (interests contain constantly increasing sequence number).
 *
 * For every received interest, producer replies with a data packet, containing
 * 1024 bytes of virtual payload.
 *
 * To run scenario and see what is happening, use the following command:
 *
 *     NS_LOG=ndn.Consumer:ndn.Producer ./waf --run=ndn-simple
 */

int
main(int argc, char* argv[])
{
  int m_node = 14;
  int m_client = 4;
  // setting default parameters for PointToPoint links and channels
  Config::SetDefault("ns3::PointToPointNetDevice::DataRate", StringValue("10Mbps"));
  Config::SetDefault("ns3::PointToPointChannel::Delay", StringValue("10ms"));
  Config::SetDefault("ns3::QueueBase::MaxPackets", StringValue("0"));

  // Read optional command-line parameters (e.g., enable visualizer with ./waf --run=<> --visualize
  CommandLine cmd;
  cmd.Parse(argc, argv);

  // Creating nodes
  NodeContainer nodes;
  nodes.Create(m_node);

  // Connecting nodes using two links
  // PointToPointHelper p2p01;
  // p2p01.Install(nodes.Get(0), nodes.Get(1));

  PointToPointHelper p2p15Mbps;
  p2p15Mbps.SetDeviceAttribute ("DataRate", StringValue ("15Mbps"));
  p2p15Mbps.SetChannelAttribute ("Delay", StringValue ("0ms"));
	
  PointToPointHelper p2p10Mbps;
  p2p10Mbps.SetDeviceAttribute ("DataRate", StringValue ("10Mbps"));
  p2p10Mbps.SetChannelAttribute ("Delay", StringValue ("0ms"));
	
  PointToPointHelper p2p8Mbps;
  p2p8Mbps.SetDeviceAttribute ("DataRate", StringValue ("8Mbps"));
  p2p8Mbps.SetChannelAttribute ("Delay", StringValue ("0ms"));
	
  PointToPointHelper p2p5Mbps;
  p2p5Mbps.SetDeviceAttribute ("DataRate", StringValue ("5Mbps"));
  p2p5Mbps.SetChannelAttribute ("Delay", StringValue ("0ms"));
	
  PointToPointHelper p2p3Mbps;
  p2p3Mbps.SetDeviceAttribute ("DataRate", StringValue ("3Mbps"));
  p2p3Mbps.SetChannelAttribute ("Delay", StringValue ("0ms"));
	
  PointToPointHelper p2p2Mbps;
  p2p2Mbps.SetDeviceAttribute ("DataRate", StringValue ("2Mbps"));
  p2p2Mbps.SetChannelAttribute ("Delay", StringValue ("0ms"));

  PointToPointHelper p2p4Mbps;
  p2p4Mbps.SetDeviceAttribute ("DataRate", StringValue ("4Mbps"));
  p2p4Mbps.SetChannelAttribute ("Delay", StringValue ("0ms"));
	
  p2p3Mbps.Install(nodes.Get(0), nodes.Get(1));
  p2p8Mbps.Install(nodes.Get(0), nodes.Get(2));
  p2p5Mbps.Install(nodes.Get(0), nodes.Get(3));
  
  p2p2Mbps.Install(nodes.Get(1), nodes.Get(4));
  p2p2Mbps.Install(nodes.Get(1), nodes.Get(5));

  p2p3Mbps.Install(nodes.Get(2), nodes.Get(6));
  p2p5Mbps.Install(nodes.Get(2), nodes.Get(7));
	
  p2p2Mbps.Install(nodes.Get(3), nodes.Get(8));
  p2p3Mbps.Install(nodes.Get(3), nodes.Get(9));
	
  p2p4Mbps.Install(nodes.Get(10), nodes.Get(0));
  p2p4Mbps.Install(nodes.Get(11), nodes.Get(0));
  p2p4Mbps.Install(nodes.Get(12), nodes.Get(0));
  p2p4Mbps.Install(nodes.Get(13), nodes.Get(0));

  // Install NDN stack on all nodes
  ndn::StackHelper ndnHelper;
  ndnHelper.SetDefaultRoutes(true);
  ndnHelper.InstallAll();

  // Choosing forwarding strategy
  //ndn::StrategyChoiceHelper::InstallAll("/myprefix", "/localhost/nfd/strategy/multicast");
  //ndn::StrategyChoiceHelper::Install(nodes, "/", "/localhost/nfd/strategy/best-route");
  ndn::StrategyChoiceHelper::InstallAll("/", "/localhost/nfd/strategy/knowledge");
  //ndn::StrategyChoiceHelper::InstallAll("/prefix", "/localhost/nfd/strategy/ncc/%FD%01");

  // Installing applications

  // Consumer
  for (int i = m_node - m_client ; i < m_node ; i ++)
  {
	  ndn::AppHelper consumerHelper1("ns3::ndn::ConsumerCbr");
	  // Consumer will request /prefix/0, /prefix/1, ...
	  consumerHelper1.SetPrefix("/prefix");
	  consumerHelper1.SetAttribute("Frequency", StringValue("1000")); // 10 interests a second
	  // consumerHelper1.SetAttribute("CongestionControl", BooleanValue(true));
	  consumerHelper1.Install(nodes.Get(i));                        // first node
  }
  /*
  ndn::AppHelper consumerHelper2("ns3::ndn::FileConsumerCbr");
  // Consumer will request /prefix/0, /prefix/1, ...
  consumerHelper2.SetPrefix("/prefix");
  consumerHelper2.SetAttribute("Frequency", StringValue("1000")); // 10 interests a second
  consumerHelper2.Install(nodes.Get(3));                        // first node
  */

  // Producer
  ndn::AppHelper producerHelper1("ns3::ndn::Producer");
  // Producer will reply to all requests starting with /prefix
  producerHelper1.SetPrefix("/prefix");
  producerHelper1.SetAttribute("PayloadSize", StringValue("1024"));
  producerHelper1.Install(nodes.Get(6)); // last node
	
  // Producer
  ndn::AppHelper producerHelper2("ns3::ndn::Producer");
  // Producer will reply to all requests starting with /prefix
  producerHelper2.SetPrefix("/prefix");
  producerHelper2.SetAttribute("PayloadSize", StringValue("1024"));
  producerHelper2.Install(nodes.Get(7)); // last node
	
  // Producer
  ndn::AppHelper producerHelper3("ns3::ndn::Producer");
  // Producer will reply to all requests starting with /prefix
  producerHelper3.SetPrefix("/prefix");
  producerHelper3.SetAttribute("PayloadSize", StringValue("1024"));
  producerHelper3.Install(nodes.Get(8)); // last node
	
  // Producer
  ndn::AppHelper producerHelper4("ns3::ndn::Producer");
  // Producer will reply to all requests starting with /prefix
  producerHelper4.SetPrefix("/prefix");
  producerHelper4.SetAttribute("PayloadSize", StringValue("1024"));
  producerHelper4.Install(nodes.Get(9)); // last node
  producerHelper4.Install(nodes.Get(4)); // last node
  producerHelper4.Install(nodes.Get(5)); // last node

  Simulator::Stop(Seconds(100));

  Simulator::Run();
  Simulator::Destroy();

  return 0;
}

} // namespace ns3

int
main(int argc, char* argv[])
{
  return ns3::main(argc, argv);
}
