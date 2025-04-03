/* P4_16 */
/**********************************************************
 * MPLS Header (RFC 3032)                                 
 * 多协议标签交换报头 - 提供高效的数据包转发机制              
 * Multi-Protocol Label Switching Header                  
 * Enables efficient packet forwarding via label switching
 ​**********************************************************/

#define V1MODEL_VERSION 20250101

#include <core.p4>
#include <v1model.p4>

// Multiprotocol Label Switching
header mpls_t {
    bit<20> label;          // Label value (0-15 are reserved labels)  标签值（0-15 为保留值，如 3=隐式空标签）
    bit<3>  trafficClass;   // Traffic class (QoS priority)  TC（QoS   优先级，原 Exp 字段）
    bit<1>  bottomOfStack;  // Bottom of stack flag (1=last label)     栈底标志（1=最后一个标签）
    bit<8>  ttl;            // Time to live (similar to IP TTL)        生存时间
}

// ---- 保留标签说明 ----
const bit<20> IMPLICIT_NULL = 0x3;  // 隐式空标签
const bit<20> EXPLICIT_NULL = 0x0;  // 显式空标签
const bit<20> ROUTER_ALERT  = 0x1;  // 路由器告警标签
