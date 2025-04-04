/​**​
 * SNMPv3 Header Definition in P4
 * Secure version of Simple Network Management Protocol
 */

/* SNMPv3 Security Levels */
enum snmpv3_sec_level {
    NOAUTH_NOPRIV = 0,
    AUTH_NOPRIV   = 1,
    AUTH_PRIV     = 2,
};

/​**​
 * SNMPv3 Global Header (12 bytes)
 */
header snmpv3 {
    bit<8>  version = 3;  // Protocol version
    bit<16> msg_id;       // Message identifier
    bit<16> max_size;     // Maximum message size
    bit<8>  flags;        // Security flags
    bit<8>  sec_model;    // Security model
    bit<32> context_id;   // Context identifier
};

/​**​
 * SNMPv3 Security Parameters (Variable length)
 */
header snmpv3_sec {
    bit<32> engine_id;     // SNMP engine ID
    bit<32> engine_boots;  // Engine boot count
    bit<32> engine_time;   // Engine time
    bit<8>  username[];    // Security name
    bit<8>  auth_param[];  // Authentication parameters
    bit<8>  priv_param[];  // Privacy parameters
};
