/* P4_16 */

#define V1MODEL_VERSION 20250101

#include <core.p4>
#include <v1model.p4>

typedef bit<16> etherType_t;
typedef bit<48> macAddr_t;

const etherType_t TYPE_IPV4 = 16w0x0800;
const etherType_t TYPE_IPV6 = 16w0x86DD;
const etherType_t TYPE_AARP = 16w0x80F3;
const etherType_t TYPE_ARP  = 16w0x0806;
const etherType_t TYPE_AVTP = 16w0x22F0;
const etherType_t TYPE_IPX  = 16w0x8137;
const etherType_t TYPE_LLDP = 16w0x88CC;
const etherType_t TYPE_VLAN = 16w0x8100;

header ethernet_t {
    macAddr_t   dstAddr;
    macAddr_t   srcAddr;
    etherType_t etherType;
}
