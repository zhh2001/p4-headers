/* P4_16 */

#define V1MODEL_VERSION 20250101

#include <core.p4>
#include <v1model.p4>

typedef bit<16> port_t;

header udp_t {
    port_t  srcPort;
    port_t  dstPort;
    bit<16> length;
    bit<16> checksum;
}
