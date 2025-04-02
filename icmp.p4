/* P4_16 */

#define V1MODEL_VERSION 20250101

#include <core.p4>
#include <v1model.p4>

header icmp_t {
    bit<8>  type;        // Message Type (e.g., Echo Request=8, Echo Reply=0)  报文类型 (如 Echo Request=8, Echo Reply=0)
    bit<8>  code;        // Message Code (e.g., No code=0)                     报文代码 (细化类型，如无代码=0)
    bit<16> checksum;    // Checksum (covers the entire ICMP message)          校验和 (覆盖整个 ICMP 报文)
    bit<16> identifier;
    bit<16> sequence;
}
