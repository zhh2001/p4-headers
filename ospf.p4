// Open Shortest Path First
header ospf_t {
    // 版本号 (8 bits) - OSPF 协议版本（通常为 2 或 3）
    // Version (8 bits) - OSPF protocol version (typically 2 or 3)
    bit<8>   version;

    // 类型 (8 bits) - 报文类型：HELLO/DD/LSR/LSU/LSAck
    // Type (8 bits) - Packet type: HELLO/DD/LSR/LSU/LSAck
    bit<8>   type;

    // 报文长度 (16 bits) - 包含 OSPF 头部的总长度
    // Packet length (16 bits) - Total length including OSPF header
    bit<16>  length;

    // 路由器ID (32 bits) - 发送者的 OSPF 路由器 ID
    // Router ID (32 bits) - Sender's OSPF router identifier
    bit<32>  router_id;

    // 区域ID (32 bits) - 所属 OSPF 区域
    // Area ID (32 bits) - Associated OSPF area
    bit<32>  area_id;

    // 校验和 (16 bits) - 整个 OSPF 报文的校验和
    // Checksum (16 bits) - Checksum of entire OSPF packet
    bit<16>  checksum;

    // 认证类型 (16 bits) - 0=无认证 1=简单密码 2=MD5
    // Auth type (16 bits) - 0=None 1=Simple 2=MD5
    bit<16>  auth_type;

    // 认证数据 (64 bits) - 密码或 MD5 摘要
    // Authentication (64 bits) - Password or MD5 digest
    bit<64>  authentication;
}
