/* P4_16 */

#define V1MODEL_VERSION 20250101

#include <core.p4>
#include <v1model.p4>

// Multiprotocol Label Switching
header mpls_t {
    bit<20> label;          // 标签值（0-15 为保留值，如 3=隐式空标签）
    bit<3>  trafficClass;   // TC（QoS 优先级，原 Exp 字段）
    bit<1>  bottomOfStack;  // 栈底标志（1=最后一个标签）
    bit<8>  ttl;            // 生存时间
}
