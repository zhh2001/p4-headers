/* P4_16 */

#define V1MODEL_VERSION 20250101

#include <core.p4>
#include <v1model.p4>

header vlan_t {
    bit<16> tpid;  // Tag Protocol Identifier  固定值为 0x8100，表示这是一个 VLAN 标签
    bit<3>  pcp;   // Priority Code Point      用于指示数据包的优先级
    bit<1>  dei;   // Drop Eligible Indicator  指示数据包是否可以被丢弃
    bit<12> vid;   // VLAN Identifier          表示 VLAN ID
}
