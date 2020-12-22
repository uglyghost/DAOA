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

#include "ndn-fw-face-id-tag.hpp"

namespace ns3 {
namespace ndn {

TypeId
FwFaceIdTag::GetTypeId()
{
  static TypeId tid =
    TypeId("ns3::ndn::FwFaceIdTag").SetParent<Tag>().AddConstructor<FwFaceIdTag>();
  return tid;
}

TypeId
FwFaceIdTag::GetInstanceTypeId() const
{
  return FwFaceIdTag::GetTypeId();
}

uint32_t
FwFaceIdTag::GetSerializedSize() const
{
  return sizeof(uint32_t);
}

void
FwFaceIdTag::Serialize(TagBuffer i) const
{
  i.WriteU32(m_faceid);
}

void
FwFaceIdTag::Deserialize(TagBuffer i)
{
  m_faceid = i.ReadU32();
}

void
FwFaceIdTag::Print(std::ostream& os) const
{
  os << m_faceid;
}

} // namespace ndn
} // namespace ns3
