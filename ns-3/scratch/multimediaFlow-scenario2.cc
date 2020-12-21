/* -*- Mode:C++; c-file-style:"gnu"; indent-tabs-mode:nil; -*- */
/**
 * Copyright (c) 2015 Christian Kreuzberger and Daniel Posch, Alpen-Adria-University
 * Klagenfurt
 *
 * This file is part of amus-ndnSIM, based on ndnSIM. See AUTHORS for complete list of
 * authors and contributors.
 *
 * amus-ndnSIM and ndnSIM are free software: you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the Free Software
 * Foundation, either version 3 of the License, or (at your option) any later version.
 *
 * amus-ndnSIM is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
 * PURPOSE.  See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * amus-ndnSIM, e.g., in COPYING.md file.  If not, see <http://www.gnu.org/licenses/>.
 **/

#include "ns3/core-module.h"
#include "ns3/network-module.h"
#include "ns3/point-to-point-module.h"
#include "ns3/ndnSIM-module.h"
#include "ns3/mobility-module.h"
#include "ns3/wifi-module.h"
#include "ns3/ndnSIM/apps/ndn-app.hpp"
#include "ns3/ndnSIM/utils/tracers/ndn-dashplayer-tracer.hpp"
#include "ns3/ndnSIM/utils/tracers/ndn-fileconsumercbr-log-tracer.hpp"
#include "ns3/core-module.h"
#include "ns3/mobility-module.h"
#include "ns3/ns2-mobility-helper.h"
#include "ns3/netanim-module.h"
#include "ns3/csma-module.h"

#include <random>
#include <iostream>
#include <iomanip>
#include <cmath>
#include <time.h>

namespace ns3 {

void
FileDownloadedTrace(Ptr<ns3::ndn::App> app, shared_ptr<const ndn::Name> interestName, double downloadSpeed, long milliSeconds)
{
  std::cout << "Trace: File finished downloading: " << Simulator::Now().GetMilliSeconds () << " "<< *interestName <<
     " Download Speed: " << downloadSpeed/1000.0 << " Kilobit/s in " << milliSeconds << " ms" << std::endl;
}

void
FileDownloadedManifestTrace(Ptr<ns3::ndn::App> app, shared_ptr<const ndn::Name> interestName, long fileSize)
{
  std::cout << "Trace: Manifest received: " << Simulator::Now().GetMilliSeconds () <<" "<< *interestName << " File Size: " << fileSize << std::endl;
}

void
FileDownloadStartedTrace(Ptr<ns3::ndn::App> app, shared_ptr<const ndn::Name> interestName)
{
  std::cout << "Trace: File started downloading: " << Simulator::Now().GetMilliSeconds () <<" "<< *interestName << std::endl;
}

int RANDMAX = 10000;

double 
randomExponential(double lambda)
{
    double pV = 0.0;
    while(true)
    {
	srand((unsigned)time( NULL ));
        pV = (double)(rand()%10000)/(double)RANDMAX;
        if (pV != 1)
        {
            break;
        }
    }
    pV = (-1.0/lambda)*log(1-pV);
    return pV;
}

NS_LOG_COMPONENT_DEFINE("main");

Ptr<UniformRandomVariable> m_seqRng = CreateObject<UniformRandomVariable>();
uint32_t mediaseq_Num;               // number of the contents
double m_q;                 // q in (k+q)^s
double m_s;                 // s in (k+q)^s
std::vector<double> m_Pcum; // cumulative probability

//Cumulative the probability of every part of media file to request
void
SetNumberOfContents(uint32_t numOfContents)
{
  mediaseq_Num = numOfContents;

  NS_LOG_DEBUG(m_q << " and " << m_s << " and " << mediaseq_Num);

  m_Pcum = std::vector<double>(mediaseq_Num + 1);

  m_Pcum[0] = 0.0;
  for (uint32_t i = 1; i <= mediaseq_Num; i++) {
    m_Pcum[i] = m_Pcum[i - 1] + 1.0 / std::pow(i + m_q, m_s);
    cout << "the probaility to request " << i << " segment media file is " << m_Pcum[i] << endl;
  }

  for (uint32_t i = 1; i <= mediaseq_Num; i++) {
    m_Pcum[i] = m_Pcum[i] / m_Pcum[mediaseq_Num];
    NS_LOG_LOGIC("Cumulative probability [" << i << "]=" << m_Pcum[i]);
  }
}

int32_t
GetNextSeq()
{
  uint32_t content_index = 1; //[1, mediaseq_Num]
  double p_sum = 0;

  double p_random = m_seqRng->GetValue();
  while (p_random == 0) {
    p_random = m_seqRng->GetValue();
  }
  // if (p_random == 0)
  NS_LOG_LOGIC("p_random=" << p_random);
  for (uint32_t i = 1; i <= mediaseq_Num; i++) {
    p_sum = m_Pcum[i]; // m_Pcum[i] = m_Pcum[i-1] + p[i], p[0] = 0;   
                       // e.g.: p_cum[1] = p[1], p_cum[2] = p[1] + p[2]
    if (p_random <= p_sum) {
      content_index = i;
      break;
    } // if
  }   // for
  // content_index = 1;
  NS_LOG_DEBUG("RandomNumber=" << content_index);
  return content_index;
}

int
main(int argc, char* argv[])
{

  // LogComponentEnable ("Config", level);  
  // LogComponentEnable ("ndn.FileConsumer", LOG_LEVEL_INFO);  
  // LogComponentEnable ("ndn.FileConsumerCbr", LOG_LEVEL_INFO);
  // LogComponentEnable ("ndn.FileConsumer", LOG_LEVEL_INFO);
  // setting default parameters for PointToPoint links and channels
  //Config::SetDefault("ns3::PointToPointNetDevice::DataRate", StringValue("10Mbps"));
  //Config::SetDefault("ns3::PointToPointChannel::Delay", StringValue("10ms"));
  Config::SetDefault("ns3::QueueBase::MaxPackets", StringValue("1"));

  int m_node = 11;
  int m_server = 3;
  double m_poisson_lambda = 0.1;
  int m_run = 1;
  int m_sel = 0;
  int m_consumer = 4;
  int m_cnode = m_consumer;
  int simulation_time = 500;
  int m_cache_size = 0;
  std::string m_probability = "1.0";
  std::string m_prefix = "/myprefix";

  //std::string node_request = "node-request-output-N" + to_string(m_node) + "-L" + to_string(m_poisson_lambda) + "-S" + to_string(m_server) + "-R" + to_string(m_run) +"-P" + m_probability + "-V" + to_string(mediaseq_Num) + "" +".txt";
  //ofstream out(node_request);

  CommandLine cmd;
  cmd.AddValue ("node", "Number of node", m_node);
  cmd.AddValue ("simulation_time", "Simulation time, default value is 200 (seconds)", simulation_time);
  cmd.AddValue ("probability", "cache probability", m_probability);
  cmd.AddValue ("consumer", "Number of consumer", m_consumer);
  cmd.AddValue ("run", "Run", m_run);
  cmd.AddValue ("sel", "Select Policy", m_sel);
  cmd.Parse (argc, argv);
  srand(m_run);
  
  NodeContainer nodes;
  nodes.Create(m_node);

  NodeContainer cnodes;
  cnodes.Create(m_cnode);
 
  // first level
  PointToPointHelper p2p30Mbps;
  p2p30Mbps.SetDeviceAttribute ("DataRate", StringValue ("30Mbps"));
  p2p30Mbps.SetChannelAttribute ("Delay", StringValue ("10ms"));
	
  PointToPointHelper p2p10Mbps;
  p2p10Mbps.SetDeviceAttribute ("DataRate", StringValue ("10Mbps"));
  p2p10Mbps.SetChannelAttribute ("Delay", StringValue ("10ms"));
	
  PointToPointHelper p2p40Mbps;
  p2p40Mbps.SetDeviceAttribute ("DataRate", StringValue ("40Mbps"));
  p2p40Mbps.SetChannelAttribute ("Delay", StringValue ("10ms"));
	
  PointToPointHelper p2p20Mbps;
  p2p20Mbps.SetDeviceAttribute ("DataRate", StringValue ("20Mbps"));
  p2p20Mbps.SetChannelAttribute ("Delay", StringValue ("10ms"));
	
  PointToPointHelper p2p100Mbps;
  p2p100Mbps.SetDeviceAttribute ("DataRate", StringValue ("100Mbps"));
  p2p100Mbps.SetChannelAttribute ("Delay", StringValue ("10ms"));
	
  PointToPointHelper p2p60Mbps;
  p2p60Mbps.SetDeviceAttribute ("DataRate", StringValue ("60Mbps"));
  p2p60Mbps.SetChannelAttribute ("Delay", StringValue ("10ms"));
	
  p2p100Mbps.Install(nodes.Get(0), nodes.Get(3));
  p2p100Mbps.Install(nodes.Get(1), nodes.Get(4));
  p2p100Mbps.Install(nodes.Get(2), nodes.Get(5));
	
  p2p20Mbps.Install(nodes.Get(3), nodes.Get(6));
  p2p30Mbps.Install(nodes.Get(3), nodes.Get(7));
  p2p10Mbps.Install(nodes.Get(3), nodes.Get(8));
	
  p2p10Mbps.Install(nodes.Get(4), nodes.Get(6));
  p2p40Mbps.Install(nodes.Get(4), nodes.Get(7));
  p2p30Mbps.Install(nodes.Get(4), nodes.Get(8));
	
  p2p20Mbps.Install(nodes.Get(5), nodes.Get(6));
  p2p20Mbps.Install(nodes.Get(5), nodes.Get(7));
  p2p40Mbps.Install(nodes.Get(5), nodes.Get(8));
  
  p2p30Mbps.Install(nodes.Get(6), nodes.Get(9));	
  p2p30Mbps.Install(nodes.Get(6), nodes.Get(10));
	
  p2p20Mbps.Install(nodes.Get(7), nodes.Get(9));
  p2p30Mbps.Install(nodes.Get(7), nodes.Get(10));
  p2p30Mbps.Install(nodes.Get(7), nodes.Get(11));
  p2p40Mbps.Install(nodes.Get(7), nodes.Get(12));

  p2p20Mbps.Install(nodes.Get(8), nodes.Get(11));
  p2p10Mbps.Install(nodes.Get(8), nodes.Get(12));
  //p2p50Mbps.Install(nodes.Get(13), nodes.Get(8));
	
  p2p60Mbps.Install(cnodes.Get(9), nodes.Get(13));
  p2p60Mbps.Install(cnodes.Get(10), nodes.Get(14));
  p2p60Mbps.Install(cnodes.Get(11), nodes.Get(15));
  p2p60Mbps.Install(cnodes.Get(12), nodes.Get(16));
  //p2p50Mbps.Install(cnodes.Get(4), nodes.Get(6));
  //p2p50Mbps.Install(cnodes.Get(5), nodes.Get(7));
  //p2p50Mbps.Install(cnodes.Get(6), nodes.Get(9));
  //p2p50Mbps.Install(cnodes.Get(7), nodes.Get(10));
	
  // Install NDN stack on all nodes
  ndn::StackHelper ndnHelper;
  ndnHelper.SetDefaultRoutes(true);
  ndnHelper.setCsSize(m_cache_size);
  ndnHelper.SetOldContentStore("ns3::ndn::cs::Probability::Lru", "MaxSize", to_string(m_cache_size), "CacheProbability", m_probability);
  ndnHelper.Install(nodes);

  ndn::StackHelper cndnHelper;
  cndnHelper.SetDefaultRoutes(true);
  cndnHelper.setCsSize(m_cache_size);
  cndnHelper.SetOldContentStore("ns3::ndn::cs::Nocache");
  cndnHelper.Install(cnodes);

  mediaseq_Num = 8;
  m_q = 0;
  m_s = 0.8;
  SetNumberOfContents(mediaseq_Num);

  //int request_time = simulation_time*m_poisson_lambda;
  int request_time = 1;
  double arrival_time[m_cnode][request_time];
  int arrival_seg[m_cnode][request_time];

  for (int i = 0; i < m_cnode; i++ )
  {  
    for(int j = 0 ; j < request_time; j++)
    {
        arrival_time[i][j] = j;
        arrival_seg[i][j] = 1;
    }
  }
	
  /*
  for (int i = 0 ; i < m_cnode; i++)
    {
      for (int j = 0 ; j < request_time; j++)
        {
          double number = randomExponential(m_poisson_lambda);
          if (j == 0)
            {
              double temp = -30000.0;
              while(temp < 0.0)
                {
                  number = randomExponential(m_poisson_lambda);
                  temp += number;
                }
                arrival_time[i][j] = temp;
                arrival_seg[i][j] = GetNextSeq();
             }
        else
           {
             arrival_time[i][j] = arrival_time[i][j-1] + number;
             arrival_seg[i][j] = GetNextSeq();
           }
        }
    }
	
  for (int i = 0 ; i < m_consumer; i++)
  {
    for (int j = 0 ; j < request_time; j++)  
    {
      out << "node ID: " << i << std::endl;
      out << "request time: " << arrival_time[i][j] << std::endl;
      out << "request segment: " << arrival_seg[i][j] << std::endl;
    }
  }
  */

  // Choosing forwarding strategy
  if(m_sel==0)
    ndn::StrategyChoiceHelper::InstallAll("/myprefix", "/localhost/nfd/strategy/multicast");
  else if(m_sel==1)
    ndn::StrategyChoiceHelper::InstallAll("/myprefix", "/localhost/nfd/strategy/best-route");
  else if(m_sel==2)
    ndn::StrategyChoiceHelper::InstallAll("/myprefix", "/localhost/nfd/strategy/ncc/%FD%01");
  else if(m_sel==3)
    ndn::StrategyChoiceHelper::InstallAll("/myprefix", "/localhost/nfd/strategy/knowledge");
  else if(m_sel==4)
    ndn::StrategyChoiceHelper::InstallAll("/myprefix", "/localhost/nfd/strategy/client-control/%FD%01");
  else 
    ndn::StrategyChoiceHelper::InstallAll("/myprefix", "/localhost/nfd/strategy/access/%FD%01");

  //ndn::StrategyChoiceHelper::InstallAll("/myprefix", "/localhost/nfd/strategy/best-route/%FD%03");

  //Consumer
  for (int i = 0 ; i < m_cnode; i++)
    {
      for (int j = 0 ; j < request_time; j++) 
      {
        ns3::ndn::AppHelper consumerHelper("ns3::ndn::FileConsumerCbr::MultimediaConsumer");
        std::stringstream request_time;
        request_time << arrival_time[i][j];
        //consumerHelper.SetAttribute("StartTime", StringValue(request_time.str()));
        //int segment_time = 25*j;
        //request_time << segment_time;
        consumerHelper.SetAttribute("StartTime", StringValue(request_time.str()));
        consumerHelper.SetAttribute("AllowUpscale", BooleanValue(true));
        consumerHelper.SetAttribute("CongestionControl", BooleanValue(true));
        consumerHelper.SetAttribute("AllowDownscale", BooleanValue(false));
        consumerHelper.SetAttribute("ScreenWidth", UintegerValue(1920));
        consumerHelper.SetAttribute("ScreenHeight", UintegerValue(1080));
        consumerHelper.SetAttribute("StartRepresentationId", StringValue("auto"));
        consumerHelper.SetAttribute("MaxBufferedSeconds", UintegerValue(3000));
        consumerHelper.SetAttribute("StartUpDelay", StringValue("2"));
        consumerHelper.SetAttribute("AdaptationLogic", StringValue("dash::player::SVCBufferBasedAdaptationLogic"));

        std::stringstream ss;
        ss<<"/myprefix/SVC/BBB/dash-"<<setfill('0') << setw(3) << arrival_seg[i][j]<<"-cp.mpd";
        //ss<<"/myprefix/AVC/BBB-2s-"<<setfill('0') << setw(2)<<i+1<<".mpd";
        //ss<<"/myprefix/SVC/BBB/BBB-III.mpd";
        consumerHelper.SetAttribute("MpdFileToRequest", StringValue(ss.str()));

        //if(i < m_cnode)
        ApplicationContainer app1 = consumerHelper.Install (cnodes.Get(i));
        //else
        //ApplicationContainer app1 = consumerHelper.Install (nodes.Get(i-m_cnode));

      }
    }
	
  // Connect Tracers
  Config::ConnectWithoutContext("/NodeList/*/ApplicationList/*/FileDownloadFinished",
                             MakeCallback(&FileDownloadedTrace));
  //Config::ConnectWithoutContext("/NodeList/*/ApplicationList/*/ManifestReceived",
  //                             MakeCallback(&FileDownloadedManifestTrace));
  //Config::ConnectWithoutContext("/NodeList/*/ApplicationList/*/FileDownloadStarted",
  //                             MakeCallback(&FileDownloadStartedTrace));

  // Producer
  ndn::GlobalRoutingHelper ndnGlobalRoutingHelper;
  ndnGlobalRoutingHelper.InstallAll();

  for (int i = m_node - m_server ; i < m_node ; i ++)
    {
      ndnGlobalRoutingHelper.AddOrigins(m_prefix, nodes.Get(i));

      ndn::AppHelper producerHelper("ns3::ndn::FileServer");
      producerHelper.SetPrefix("/myprefix");
      producerHelper.SetAttribute("ContentDirectory", StringValue("/home/deepmind/multimediaData"));
      producerHelper.Install(nodes.Get(i)); 
    }
  ndn::GlobalRoutingHelper::CalculateRoutes();

  ///////////////////////////////////////////////////////////////////////

  Simulator::Stop(Seconds(simulation_time));

  //std::string CsTracer = "CsTracer-output-N" + to_string(m_node) + "-L" + to_string(m_poisson_lambda) + "-S" + to_string(m_server) + "-R" + to_string(m_run)  +"-P" + m_probability + "-V" + to_string(mediaseq_Num) + "-multicast" +".txt";
  //ndn::CsTracer::InstallAll(CsTracer, Seconds(1));

  //std::string Log_output = "Log-S2-N" + to_string(m_node) + "-S" + to_string(m_server) + "-R" + to_string(m_run) + "-S" + to_string(m_sel) +".txt";
  //ndn::FileConsumerLogTracer::InstallAll(Log_output);

  //std::string CbrLog_output = "CbrLog-S2-N" + to_string(m_node) + "-S" + to_string(m_server) + "-R" + to_string(m_run) + "-S" + to_string(m_sel) +".txt";
  //ndn::FileConsumerCbrLogTracer::InstallAll(CbrLog_output);

  std::string DASH_output = "DASH-S2-N" + to_string(m_node) + "-S" + to_string(m_server) + "-R" + to_string(m_run) + "-S" + to_string(m_sel) +".txt";
  ndn::DASHPlayerTracer::InstallAll(DASH_output);

  //std::string L3Rate_output = "L3-output-N" + to_string(m_node) + "-L" + to_string(m_poisson_lambda) + "-S" + to_string(m_server) + "-R" + to_string(m_run) +"-P" + m_probability + "-V" + to_string(mediaseq_Num) + "" +".txt";
  //ndn::L3RateTracer::InstallAll(L3Rate_output, Seconds(1));

  //std::string L2Rate_output = "L2-output-N" + to_string(m_node) + "-L" + to_string(m_poisson_lambda) + "-S" + to_string(m_server) + "-R" + to_string(m_run) +"-P" + m_probability + "-V" + to_string(mediaseq_Num) + "" +".txt";
  //ndn::L2RateTracer::InstallAll(L2Rate_output,1);

  Simulator::Run();
  Simulator::Destroy();

  NS_LOG_UNCOND("Simulation Finished.");

  return 0;
}

} // namespace ns3

int
main(int argc, char* argv[])
{
  return ns3::main(argc, argv);
}
