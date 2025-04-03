/**********************************************************
 * GENEVE Header (RFC 8926)                               
 * 通用网络虚拟化封装报头 - 新一代数据中心 overlay 协议        
 * Generic Network Virtualization Encapsulation Header     
 * Next-gen overlay protocol for data centers              
 ​**********************************************************/

header geneve_t {
    // ---- 基础头部字段 (8 字节) ----
    bit<2>  version;        // Version (currently 0)                      版本号 (当前为 0)
    bit<6>  opt_len;        // Option length (in 4-byte words)            选项长度 (以 4 字节为单位)
    bit<1>  oam_flag;       // OAM packet flag                            OAM 标志位 (管理报文)
    bit<1>  critical_flag;  // Critical options flag                      关键选项标志位
    bit<6>  reserved;       // Reserved (must be 0)                       保留字段 (必须为 0)
    bit<24> vni;            // Virtual Network Identifier                 虚拟网络标识符
    bit<8>  protocol;       // Payload protocol type (same as EtherType)  载荷协议类型 (同 EtherType)

    // ---- 可变长选项字段 ----
    bit<16> opt_class;             // Option class (IETF/private etc.)       选项类别 (IETF/私有等)
    bit<8>  opt_type;              // Option type                            选项类型
    bit<8>  opt_length;            // Option data length (excluding header)  选项数据长度 (不含头部)
    bit<8>  opt_data[opt_length];  // Option data                            选项数据
}