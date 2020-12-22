/* -*- Mode:C++; c-file-style:"gnu"; indent-tabs-mode:nil; -*- */
/**
 * Copyright (c) 2014-2015,  Regents of the University of California,
 *                           Arizona Board of Regents,
 *                           Colorado State University,
 *                           University Pierre & Marie Curie, Sorbonne University,
 *                           Washington University in St. Louis,
 *                           Beijing Institute of Technology,
 *                           The University of Memphis.
 *
 * This file is part of NFD (Named Data Networking Forwarding Daemon).
 * See AUTHORS.md for complete list of NFD authors and contributors.
 *
 * NFD is free software: you can redistribute it and/or modify it under the terms
 * of the GNU General Public License as published by the Free Software Foundation,
 * either version 3 of the License, or (at your option) any later version.
 *
 * NFD is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
 * PURPOSE.  See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * NFD, e.g., in COPYING.md file.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <numeric>
#include "best-knowledge-strategy.hpp"
#include "ns3/simulator.h"

namespace nfd {
namespace fw {

const Name KnowledgeRouteStrategy::STRATEGY_NAME("ndn:/localhost/nfd/strategy/knowledge");
NFD_REGISTER_STRATEGY(KnowledgeRouteStrategy);

KnowledgeRouteStrategy::KnowledgeRouteStrategy(Forwarder& forwarder, const Name& name)
  : Strategy(forwarder, name)
{
}

KnowledgeRouteStrategy::~KnowledgeRouteStrategy()
{
}

static inline bool
predicate_PitEntry_canForwardTo_NextHop(shared_ptr<pit::Entry> pitEntry,
                                        const fib::NextHop& nexthop)
{
  return pitEntry->canForwardTo(*nexthop.getFace());
}

void
KnowledgeRouteStrategy::afterReceiveInterest(const Face& inFace,
                   const Interest& interest,
                   shared_ptr<fib::Entry> fibEntry,
                   shared_ptr<pit::Entry> pitEntry)
{
	
  if (pitEntry->hasUnexpiredOutRecords()) {
    // not a new Interest, don't forward
    return;
  }

  const fib::NextHopList& nexthops = fibEntry->getNextHops();
  fib::NextHopList::const_iterator it = std::find_if(nexthops.begin(), nexthops.end(),
													 bind(&predicate_PitEntry_canForwardTo_NextHop, pitEntry, _1));

  /*
  fib::NextHopList::const_iterator itor_hops = nexthops.begin();
  while(itor_hops != nexthops.end())
  {
	  std::cout << " itor_hops " << itor_hops->getFace() << std::endl;
	  itor_hops++;
  }
  */
	
  if (it == nexthops.end()) {
    this->rejectPendingInterest(pitEntry);
    return;
  }
	
/*
 * Add Party
 */
  std::list<shared_ptr<Face>> outFace_list;
  std::list<double> facebitrate_list;
  outFace_list.push_back(it->getFace());
  facebitrate_list.push_back(it->getFace()->m_facebij);

  double m_nowtime = ns3::Simulator::Now().GetSeconds();

  while ( it != nexthops.end() )
  {
	  it++;
	  it = std::find_if(it, nexthops.end(),
	  					bind(&predicate_PitEntry_canForwardTo_NextHop, pitEntry, _1));
	  if ( it != nexthops.end() )
	  {
		  outFace_list.push_back(it->getFace());
      facebitrate_list.push_back(it->getFace()->m_facebij);
	  }
  }
	
  //std::cout<<"+++++++++++"<<std::endl;
/*
  double temp_max = 10000;
  std::list<double>::const_iterator itor=facebij_list.begin();
  std::list<shared_ptr<Face>>::const_iterator outFace = outFace_list.begin(),tempFace = outFace_list.begin();
  while(itor != facebij_list.end())
  {
	  std::cout<< "large cir: " <<*itor<<std::endl;
	  if (*itor < temp_max)
	  {
		  temp_max = *itor;
		  outFace = tempFace;
	  }
	  itor++;
	  tempFace++;
  }
  std::cout<<"+++++++++++"<<std::endl;
  //std::cout << "select number: " << temp_max << std::endl;
  //std::cout<<"faceID"<<(*outFace)->getId()<<std::endl;
*/
  double temp_sum = 0;
  int NumberOfOut = 0;
  std::list<double>::const_iterator itor = facebitrate_list.begin();
  std::list<shared_ptr<Face>>::const_iterator outFace = outFace_list.begin();
  
  double sumbij = 0;
  while(itor != facebitrate_list.end())
  {
    //std::cout << "Data Rate: " << (*itor) << std::endl;
    sumbij = sumbij + *itor;
    itor++;
    NumberOfOut++;
  }
  //std::cout<<"+++++++++++"<<std::endl;
  
  double posbij = double(rand())/(RAND_MAX)*double(sumbij);
  itor = facebitrate_list.begin();
  while(itor != facebitrate_list.end())
  {
      temp_sum = temp_sum + *itor;
	  if(temp_sum >= posbij)
		  break;
      else
	  {
		  outFace++;
		  itor++;
	  }
  }
  
  this->sendInterest(pitEntry, *outFace);
}

} // namespace fw
} // namespace nfd
