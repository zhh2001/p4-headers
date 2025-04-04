/​**​
 * TFTP Header Definition in P4
 * Trivial File Transfer Protocol for lightweight file transfer
 * 简单文件传输协议
 */

/* TFTP Opcode Types */
enum tftp_opcode {
    RRQ   = 1,  // Read request
    WRQ   = 2,  // Write request
    DATA  = 3,  // Data packet
    ACK   = 4,  // Acknowledgment
    ERROR = 5,  // Error packet
};

/​**​
 * TFTP Base Header
 */
header tftp {
    bit<16> src_port;       // Client port (ephemeral)
    bit<16> dst_port = 69;  // TFTP well-known port
    bit<16> opcode;         // Operation code (tftp_opcode)
    bit<16> block_num;      // Block number (DATA/ACK)
    bit<8>  filename[];     // Null-terminated filename
    bit<8>  mode[];         // Transfer mode (octet/netascii)
};
