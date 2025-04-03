typedef bit<48> macAddr_t;
typedef bit<16> etherType_t;
typedef bit<7>  tlvType_t;

// Link Layer Discovery Protocol
header lldp_t {
    // 目标 MAC 地址 (48 bits) - 固定为 01:80:C2:00:00:0E
    // Destination MAC (48 bits) - Fixed to 01:80:C2:00:00:0E
    macAddr_t   dst_mac;

    // 源 MAC 地址 (48 bits) - 发送设备的 MAC 地址
    // Source MAC (48 bits) - Sender's MAC address
    macAddr_t   src_mac;

    // 以太网类型 (16 bits) - 固定为 0x88CC
    // EtherType (16 bits) - Fixed to 0x88CC
    etherType_t ether_type;

    // TLV 结构 (可变长度) - 包含多个 TLV 单元
    // TLV structure (variable) - Contains multiple TLVs
    varbit<512> tlvs;
}

header lldp_tlv_t {
    // 类型 (7 bits) - TLV 类型标识
    // Type (7 bits) - TLV type identifier
    tlvType_t  type;

    // 长度 (9 bits) - TLV 值的字节长度
    // Length (9 bits) - Value field length in bytes
    bit<9>      length;

    // 值 (可变长度) - 实际 TLV 数据
    // Value (variable) - TLV payload data
    varbit<512> value;
}

// 关键 TLV 类型说明（可扩展）
const tlvType_t LLDP_TLV_CHASSIS_ID   = 1;    // 机箱 ID
const tlvType_t LLDP_TLV_PORT_ID      = 2;    // 端口 ID
const tlvType_t LLDP_TLV_TTL          = 3;    // 存活时间(秒)
const tlvType_t LLDP_TLV_PORT_DESC    = 4;    // 端口描述
const tlvType_t LLDP_TLV_SYSTEM_NAME  = 5;    // 系统名称
const tlvType_t LLDP_TLV_SYSTEM_DESC  = 6;    // 系统描述
const tlvType_t LLDP_TLV_CAPABILITIES = 7;    // 设备能力
const tlvType_t LLDP_TLV_MGMT_ADDR    = 8;    // 管理地址
const tlvType_t LLDP_TLV_ORG_SPECIFIC = 127;  // 厂商自定义

/**
 * 典型应用场景
 *   1. 拓扑发现（通过 `SYSTEM_NAME` 和 `PORT_ID`）
 *   2. 故障诊断（通过 `TTL` 超时检测链路故障）
 *   3. 网络策略自动配置（通过 `CAPABILITIES` 字段）
 */
