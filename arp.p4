/* P4_16 */

#define V1MODEL_VERSION 20250101

#include <core.p4>
#include <v1model.p4>

typedef bit<48> macAddr_t;
typedef bit<32> ip4Addr_t;

header arp_t {
    bit<16>   hwType;        // 硬件类型
    bit<16>   protoType;     // 协议类型
    bit<8>    hwAddrLen;     // 硬件地址长度
    bit<8>    protoAddrLen;  // 协议地址长度
    bit<16>   opcode;        // 操作码
    macAddr_t srcHwAddr;     // 发送方硬件地址
    ip4Addr_t srcProtoAddr;  // 发送方协议地址
    macAddr_t dstHwAddr;     // 目标硬件地址
    ip4Addr_t dstProtoAddr;  // 目标协议地址
}
