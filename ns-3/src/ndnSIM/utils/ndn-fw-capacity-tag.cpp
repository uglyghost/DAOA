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

#include "ndn-fw-capacity-tag.hpp"

using namespace std;  

namespace ns3 {
namespace ndn {

TypeId
FwCapacityTag::GetTypeId()
{
  static TypeId tid =
    TypeId("ns3::ndn::FwCapacityTag").SetParent<Tag>().AddConstructor<FwCapacityTag>();
  return tid;
}

TypeId
FwCapacityTag::GetInstanceTypeId() const
{
  return FwCapacityTag::GetTypeId();
}

uint32_t
FwCapacityTag::GetSerializedSize() const
{
  return sizeof(uint32_t);
}

void
FwCapacityTag::Serialize(TagBuffer i) const
{
  i.WriteU32(m_capacity);
}

void
FwCapacityTag::Deserialize(TagBuffer i)
{
  m_capacity = i.ReadU32();
}

void
FwCapacityTag::Print(std::ostream& os) const
{
  os << m_capacity;
}

} // namespace ndn
} // namespace ns3