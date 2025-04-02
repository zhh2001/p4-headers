/* P4_16 */

#define V1MODEL_VERSION 20250101

#include <core.p4>
#include <v1model.p4>

// Generic Routing Encapsulation Header  通用路由封装协议报头
header gre_t {
    bit<1>  C;         // Checksum present                     校验和标志位 (1=存在校验和字段)
    bit<1>  R;         // Routing present                      路由标志位 (1=存在路由字段)
    bit<1>  K;         // Key present                          密钥标志位 (1=存在密钥字段)
    bit<1>  S;         // Sequence number present              序列号标志位 (1=存在序列号字段)
    bit<1>  s;         // Strict source route                  严格源路由标志 (仅当R=1时有效)
    bit<3>  version;   // GRE version (must be 0)              GRE版本号 (必须为 0)
    bit<16> protocol;  // Payload protocol (e.g. 0x0800=IPv4)  载荷协议类型 (如 0x0800=IPv4)

    // Optional fields (appear dynamically based on flags)  以下为可选字段 (根据标志位动态出现)
    bit<16> checksum;  // Checksum (present if C=1 or R=1)  校验和 (仅当 C=1 或 R=1 时存在)
    bit<16> offset;    // Routing offset (present if R=1)   路由偏移量 (仅当 R=1 时存在)
    bit<32> key;       // Key (present if K=1)              密钥 (仅当 K=1 时存在)
    bit<32> seq_num;   // Sequence number (present if S=1)  序列号 (仅当 S=1 时存在)
}
