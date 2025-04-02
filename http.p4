/* P4_16 */

#define V1MODEL_VERSION 20250101

#include <core.p4>
#include <v1model.p4>

header http_t {
    bit<8>  method;
    bit<16> status_code;
    bit<32> content_length;
}
