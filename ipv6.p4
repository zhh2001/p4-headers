/* P4_16 */

#define V1MODEL_VERSION 20250101

#include <core.p4>
#include <v1model.p4>

typedef bit<4>   ipVersion_t;
typedef bit<8>   protocol_t;
typedef bit<8>   nextHeader_t;
typedef bit<128> ip6Addr_t;

// IPv4 协议的 protocol 字段取值
const protocol_t PROTOCOL_ICMP = 8w0d1;    // Internet Control Message Protocol     互联网控制报文协议‌
const protocol_t PROTOCOL_IGMP = 8w0d2;    // Internet Group Management Protocol    组播协议
const protocol_t PROTOCOL_TCP  = 8w0d6;    // Transmission Control Protocol         传输控制协议
const protocol_t PROTOCOL_UDP  = 8w0d17;   // User Datagram Protocol                用户数据报协议
const protocol_t PROTOCOL_GRE  = 8w0d47;   // Generic Routing Encapsulation         通用路由封装
const protocol_t PROTOCOL_ESP  = 8w0d50;   // Encapsulating Security Payload        封装安全载荷
const protocol_t PROTOCOL_AH   = 8w0d51;   // Authentication Header                 认证标头
const protocol_t PROTOCOL_OSPF = 8w0d89;   // Open Shortest Path First              开放式最短路径优先
const protocol_t PROTOCOL_SCTP = 8w0d132;  // Stream Control Transmission Protocol  流控制传输协议

// IPv6 协议的 next_header 字段取值
const nextHeader_t NEXT_HEADER_HOP_OPT = 8w0d0;          // Hop-by-Hop Options
const nextHeader_t NEXT_HEADER_ICMP    = PROTOCOL_ICMP;
const nextHeader_t NEXT_HEADER_IGMP    = PROTOCOL_IGMP;
const nextHeader_t NEXT_HEADER_TCP     = PROTOCOL_TCP;
const nextHeader_t NEXT_HEADER_UDP     = PROTOCOL_UDP;
const nextHeader_t NEXT_HEADER_ROUTING = 8w0d43;         // Routing Header
const nextHeader_t NEXT_HEADER_FRAG    = 8w0d44;         // Fragment Header
const nextHeader_t NEXT_HEADER_GRE     = PROTOCOL_GRE;
const nextHeader_t NEXT_HEADER_ESP     = PROTOCOL_ESP;
const nextHeader_t NEXT_HEADER_AH      = PROTOCOL_AH;
const nextHeader_t NEXT_HEADER_NONE    = 8w0d59;         // No Next Header
const nextHeader_t NEXT_HEADER_DST_OPT = 8w0d60;         // Destination Options
const nextHeader_t NEXT_HEADER_OSPF    = PROTOCOL_OSPF;
const nextHeader_t NEXT_HEADER_SCTP    = PROTOCOL_SCTP;

header ipv6_t {
    ipVersion_t  version;
    bit<8>       trafficClass;
    bit<20>      flowLabel;
    bit<16>      payloadLength;
    nextHeader_t nextHeader;
    bit<8>       hopLimit;
    ip6Addr_t    srcAddr;
    ip6Addr_t    dstAddr;
}
