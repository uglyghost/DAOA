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

#include "ndn-fw-link-price-tag.hpp"

using namespace std;  

namespace ns3 {
namespace ndn {

TypeId
FwLinkPriceTag::GetTypeId()
{
  static TypeId tid =
    TypeId("ns3::ndn::FwLinkPriceTag").SetParent<Tag>().AddConstructor<FwLinkPriceTag>();
  return tid;
}

TypeId
FwLinkPriceTag::GetInstanceTypeId() const
{
  return FwLinkPriceTag::GetTypeId();
}

uint32_t
FwLinkPriceTag::GetSerializedSize() const
{
  return sizeof(double);
}

void
FwLinkPriceTag::Serialize(TagBuffer i) const
{
  i.WriteDouble(m_price);
}

void
FwLinkPriceTag::Deserialize(TagBuffer i)
{
  m_price = i.ReadDouble();
}

void
FwLinkPriceTag::Print(std::ostream& os) const
{
  os << m_price;
}

} // namespace ndn
} // namespace ns3
