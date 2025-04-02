/* P4_16 */

#define V1MODEL_VERSION 20250101

#include <core.p4>
#include <v1model.p4>

// Internet Group Management Protocol Header - Used for IPv4 multicast membership management
// 互联网组管理协议报头 - 用于IPv4组播成员管理
header igmp_t {
    bit<8>  type;             // Message Type (e.g., Membership Query=0x11, Membership Report=0x16)                报文类型 (如成员查询=0x11, 成员报告=0x16)
    bit<8>  maxResponseTime;  // Maximum Response Time (in units of 1/10 second, only valid in query messages)     最大响应时间 (单位：1/10秒，仅在查询报文中有效)
    bit<16> checksum;         // Checksum (covers the entire IGMP message)                                         校验和 (覆盖整个 IGMP 报文)
    bit<32> groupAddress;     // Multicast Group Address (0 in query messages, target multicast group in reports)  组播组地址 (在查询报文中为 0，报告报文中为目标组播组)
}
