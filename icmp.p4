/* P4_16 */

#define V1MODEL_VERSION 20250101

#include <core.p4>
#include <v1model.p4>

header icmp_t {
    bit<8>  type;
    bit<8>  code;
    bit<16> checksum;
    bit<16> identifier;
    bit<16> sequence;
}
