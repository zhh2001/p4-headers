typedef bit<48> macAddr_t;
typedef bit<16> port_t;
typedef bit<8>  lacpState_t;

// Link Aggregation Control Protocol
header lacp_t {
    // 子类型 (8 bits) - 固定为 0x01 表示 LACP 协议
    // Subtype (8 bits) - Fixed to 0x01 for LACP
    bit<8>      subtype;

    // 版本号 (8 bits) - 当前为 0x01
    // Version (8 bits) - Currently 0x01
    bit<8>      version;

    // 参与者系统优先级 (16 bits) - 用于确定 Actor 系统 ID
    // Actor System Priority (16 bits) - For Actor System ID determination
    bit<16>     actor_sys_priority;

    // 参与者系统 ID (48 bits) - 通常使用交换机 MAC 地址
    // Actor System ID (48 bits) - Typically switch MAC address
    macAddr_t   actor_sys_id;

    // 参与者 Key (16 bits) - 标识聚合组的逻辑接口
    // Actor Key (16 bits) - Identifies aggregation group
    bit<16>     actor_key;

    // 参与者端口优先级 (16 bits) - 用于端口选择
    // Actor Port Priority (16 bits) - For port selection
    bit<16>     actor_port_priority;

    // 参与者端口号 (16 bits) - 物理端口标识
    // Actor Port Number (16 bits) - Physical port identifier
    port_t      actor_port;

    // 参与者状态 (8 bits) - 同步/超时/聚合等状态标志
    // Actor State (8 bits) - Sync/Timeout/Aggregation flags
    lacpState_t actor_state;

    // 对端系统优先级 (16 bits) - Partner 系统优先级
    // Partner System Priority (16 bits) - Partner's priority
    bit<16>     partner_sys_priority;

    // 对端系统 ID (48 bits) - 邻居交换机的系统 ID
    // Partner System ID (48 bits) - Neighbor's system ID
    macAddr_t   partner_sys_id;

    // 对端Key (16 bits) - 邻居的聚合组标识
    // Partner Key (16 bits) - Neighbor's aggregation group
    bit<16>     partner_key;

    // 对端端口优先级 (16 bits) - 邻居端口优先级
    // Partner Port Priority (16 bits) - Neighbor's port priority
    bit<16>     partner_port_priority;

    // 对端端口号 (16 bits) - 邻居物理端口标识
    // Partner Port Number (16 bits) - Neighbor's port identifier
    port_t      partner_port;

    // 对端状态 (8 bits) - 邻居的状态标志
    // Partner State (8 bits) - Neighbor's state flags
    lacpState_t partner_state;
}


// 状态标志位定义（RFC 802.1AX）
const lacpState_t LACP_STATE_ACTIVE  = 8w0x01;  // 主动发送 LACP 报文
const lacpState_t LACP_STATE_TIMEOUT = 8w0x02;  // 使用短超时 (1 秒)
const lacpState_t LACP_STATE_AGG     = 8w0x04;  // 端口可聚合标志
const lacpState_t LACP_STATE_SYNC    = 8w0x08;  // 端口同步状态
const lacpState_t LACP_STATE_COLLECT = 8w0x10;  // 允许流量收集
const lacpState_t LACP_STATE_DISTRIB = 8w0x20;  // 允许流量分发
const lacpState_t LACP_STATE_DEFAULT = 8w0x3C;  // 默认启用状态


/**
 * 典型工作流程
 *   1. 链路监控：通过定期发送 LACP 报文（默认 30 秒）
 *   2. 聚合协商：比较 Actor/Partner 的 System ID 和 Key
 *   3. 负载均衡：基于端口优先级和哈希算法分配流量
 */
