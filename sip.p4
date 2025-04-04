/​**​
 * SIP Header Definition in P4
 * Session Initiation Protocol for VoIP
 */

/* SIP Methods */
enum sip_method {
    INVITE   = 0,
    ACK      = 1,
    BYE      = 2,
    REGISTER = 3,
};

/​**​
 * SIP Base Header
 */
header sip {
    bit<16> src_port;         // Client port (5060 or ephemeral)
    bit<16> dst_port = 5060;  // SIP port
    bit<32> call_id;          // Call identifier
    bit<8>  method;           // SIP method (sip_method)
    bit<8>  cseq;             // Command sequence
    bit<16> max_forwards;     // Hop count
    bit<8> via[];             // Via headers
    bit<8> from[];            // From header
    bit<8> to[];              // To header
};
