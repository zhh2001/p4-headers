/* P4_16 */
/**********************************************************
 * VXLAN Header (RFC 7348)                                
 * 虚拟可扩展局域网报头 - 用于数据中心网络虚拟化               
 * Virtual Extensible LAN Header                           
 * Enables network virtualization in data centers          
 ​**********************************************************/

#define V1MODEL_VERSION 20250101

#include <core.p4>
#include <v1model.p4>

// Virtual Extensible LAN Header
header vxlan_t {
    // ---- 基础 VXLAN 头部 (8 字节) ----
    bit<8>  flags;      // Flags (I bit must be 1)              标志位 (I 位必须为 1)
    bit<24> reserved1;  // Reserved (must be 0)                 保留字段 (必须为 0)
    bit<24> vni;        // Virtual Network Identifier (24-bit)  虚拟网络标识符 (24 位)
    bit<8>  reserved2;  // Reserved (must be 0)                 保留字段 (必须为 0)

    // ---- 可选字段 (GPE 扩展) ----
    bit<2> gpe_flags;     // GPE flags (Next Protocol bits)                 GPE 标志位 (Next Protocol 位)
    bit<6> gpe_reserved;  // GPE reserved bits                              GPE 保留位
    bit<8> next_proto;    // Next protocol type (e.g., IPv4=1, Ethernet=2)  下一协议类型 (如 IPv4=1, Ethernet=2)
}
