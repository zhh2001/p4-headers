typedef bit<8> pppoeCode_t;

// PPPoE (Point-to-Point Protocol over Ethernet)  宽带接入网络（如 ADSL、光纤到户）的关键协议
header pppoe_t {
    // 版本类型 (4 bits) - 固定为 0x1
    // VerType (4 bits) - Fixed to 0x1
    bit<4>      ver_type;

    // 代码 (8 bits) - 会话阶段标识：
    // Code (8 bits) - Session phase identifier:
    //   0x09 = PADI, 0x07 = PADO 
    //   0x19 = PADR, 0x65 = PADS
    //   0xA7 = PADT (终止)
    pppoeCode_t code;

    // 会话 ID (16 bits) - 建立会话后分配的唯一 ID
    // Session ID (16 bits) - Assigned after session establishment
    bit<16>     session_id;

    // 载荷长度 (16 bits) - PPPoE 数据部分长度
    // Payload length (16 bits) - Length of PPPoE payload
    bit<16>     payload_len;

    // 标签类型 (16 bits) - 0x0101=服务名 0x0102=AC名称
    // Tag type (16 bits) - 0x0101=Service-Name 0x0102=AC-Name
    bit<16>     tag_type;

    // 标签长度 (16 bits) - 标签值的字节长度
    // Tag length (16 bits) - Length of tag value
    bit<16>     tag_len;

    // 标签值 (可变长度) - 实际标签数据
    // Tag value (variable) - Actual tag data
    varbit<256> tag_value;
}

header ppp_t {
    // 协议类型 (16 bits) - 上层协议标识：
    // Protocol (16 bits) - Upper layer protocol:
    //   0x0021 = IPv4, 0x0057 = IPv6
    //   0xC021 = LCP, 0xC023 = PAP
    //   0xC223 = CHAP
    bit<16>  protocol;

    // 载荷数据 (可变长度) - 实际 PPP 帧内容
    // Payload (variable) - Actual PPP frame
    varbit<1500> payload;
}


// 关键会话阶段常量定义（RFC 2516）
const pppoeCode_t PPPOE_CODE_PADI = 8w0x09;  // 发现初始请求
const pppoeCode_t PPPOE_CODE_PADO = 8w0x07;  // 发现提供响应
const pppoeCode_t PPPOE_CODE_PADR = 8w0x19;  // 发现请求响应
const pppoeCode_t PPPOE_CODE_PADS = 8w0x65;  // 发现会话确认
const pppoeCode_t PPPOE_CODE_PADT = 8w0xA7;  // 发现终止报文


/**
 * 典型宽带接入流程
 *     1. 发现阶段：
 *         - 客户端发送 PADI（广播）
 *         - 服务器回复 PADO（单播）
 *         - 客户端选择服务器并发送 PADR
 *         - 服务器分配 SessionID 返回 PADS
 *     2. 会话阶段：
 *         - 进行 PPP LCP 协商
 *         - 认证（PAP/CHAP）
 *         - 建立 IP 连接（IPCP 协议）
 *     3. 终止阶段：
 *         - 任意方发送 PADT 终止会话
 */
