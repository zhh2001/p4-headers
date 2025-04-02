/* P4_16 */

#define V1MODEL_VERSION 20250101

#include <core.p4>
#include <v1model.p4>

typedef bit<32> ip4Addr_t;
typedef bit<8>  protocol_t;

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

header ipv4_t {
    bit<4>     version;
    bit<4>     ihl;
    bit<8>     diffserv;
    bit<16>    totalLen;
    bit<16>    identification;
    bit<3>     flags;
    bit<13>    fragOffset;
    bit<8>     ttl;
    protocol_t protocol;
    bit<16>    hdrChecksum;
    ip4Addr_t  srcAddr;
    ip4Addr_t  dstAddr;
}
