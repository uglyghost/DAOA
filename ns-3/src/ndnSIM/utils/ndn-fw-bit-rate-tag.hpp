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

#ifndef NDN_FW_BIT_RATE_TAG_H
#define NDN_FW_BIT_RATE_TAG_H

#include "ns3/tag.h"

using namespace std;  

namespace ns3 {
namespace ndn {

/**
 * @ingroup ndn-fw
 * @brief Packet tag that is used to track hop count for Interest-Data pairs
 */
class FwBitRateTag : public Tag {
public:
  static TypeId
  GetTypeId(void);

  /**
   * @brief Default constructor
   */
  FwBitRateTag()
    : m_bitrate(0){};

  /**
   * @brief Destructor
   */
  ~FwBitRateTag()
  {
  }

  uint32_t
  GetBitRate() const
  {
    return m_bitrate;
  }

  void
  Set(uint32_t bitrate)
  {
    m_bitrate = bitrate;
  }

  bool
  isEmpty()
  {
    if(m_bitrate)
    {
      return false;
    }
    return true;
  }

  ////////////////////////////////////////////////////////
  // from ObjectBase
  ////////////////////////////////////////////////////////
  virtual TypeId
  GetInstanceTypeId() const;

  ////////////////////////////////////////////////////////
  // from Tag
  ////////////////////////////////////////////////////////

  virtual uint32_t
  GetSerializedSize() const;

  virtual void
  Serialize(TagBuffer i) const;

  virtual void
  Deserialize(TagBuffer i);

  virtual void
  Print(std::ostream& os) const;

private:
  uint32_t m_bitrate;

};

} // namespace ndn
} // namespace ns3

#endif // NDN_FW_BIT_RATE_TAG_H
