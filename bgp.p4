/**********************************************************
 * BGP Header (RFC 4271)
 * 边界网关协议报头 - 用于自治系统(AS)间的路由信息交换
 * Border Gateway Protocol Header
 * Used for inter-AS routing information exchange
 ​**********************************************************/

header bgp_t {
    // ---- 通用 BGP 头部 (16 字节) ----
    bit<16> marker;  // Synchronization marker (all 1s for RFC 1771 compatibility)  同步标记 (全 1，兼容 RFC 1771)
    bit<16> length;  // Total message length (including header)                     报文总长度 (包括头部)
    bit<8>  type;    // Message type (e.g., OPEN=1, UPDATE=2)                       报文类型 (如 OPEN=1, UPDATE=2)

    // ---- OPEN 报文特定字段 (type=1 时) ----
    bit<8>        version;        // BGP version (typically 4)                             BGP 版本号 (通常为 4)
    bit<16>       my_as;          // Local AS number (2 or 4 bytes)                        本地 AS 号 (2 字节或 4 字节)
    bit<16>       hold_time;      // Hold timer value (seconds)                            保持时间 (秒)
    bit<32>       bgp_id;         // BGP Router ID (IPv4 format)                           BGP 路由器 ID (IPv4 格式)
    bit<8>        opt_param_len;  // Optional parameters length                            可选参数长度
    bit<variable> opt_params;     // Optional parameters (e.g., multiprotocol extensions)  可选参数 (如多协议扩展)

    // ---- UPDATE 报文特定字段 (type=2 时) ----
    bit<16>       withdrawn_len;  // Withdrawn routes length                            撤销路由长度
    bit<variable> withdrawn;      // Withdrawn routes                                   撤销路由列表
    bit<16>       path_attr_len;  // Path attributes length                             路径属性长度
    bit<variable> path_attrs;     // Path attributes (e.g., AS_PATH, NEXT_HOP)          路径属性 (如 AS_PATH, NEXT_HOP)
    bit<variable> nlri;           // Network Layer Reachability Information (prefixes)  网络层可达信息 (前缀列表)

    // ---- NOTIFICATION 报文字段 (type=3 时) ----
    bit<8>        error_code;     // Error code             错误代码
    bit<8>        error_subcode;  // Error subcode          错误子代码
    bit<variable> error_data;     // Error diagnostic data  错误详情
}