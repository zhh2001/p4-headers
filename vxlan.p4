/* P4_16 */

#define V1MODEL_VERSION 20250101

#include <core.p4>
#include <v1model.p4>

// Virtual Extensible LAN Header - Used for network virtualization in overlay networks
// 虚拟可扩展局域网协议报头 - 用于 Overlay 网络虚拟化
header vxlan_t {
    bit<8>  flags;     // Flags (must be 00001000)    标志位 (必须为 00001000)
    bit<24> vni;       // Virtual Network Identifier  虚拟网络标识符 (24-bit VNI)
    bit<8>  reserved;  // Reserved (must be 0)        保留字段 (必须为 0)
}
