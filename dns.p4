/* P4_16 */

#define V1MODEL_VERSION 20250101

#include <core.p4>
#include <v1model.p4>

// Domain Name System Header - Used for domain name resolution and reverse resolution
// 域名系统协议报头 - 用于域名解析和反向解析
header dns_t {
    bit<16> id;       // Query ID (matches request/response)                                  查询ID (用于匹配请求和响应)
    bit<1>  qr;       // Query/Response Flag (0=query, 1=response)                            查询/响应标志 (0=查询, 1=响应)
    bit<4>  opcode;   // Opcode (Standard query=0, Inverse query=1, Server status request=2)  操作码 (标准查询=0, 反向查询=1, 服务器状态请求=2)
    bit<1>  aa;       // Authoritative Answer Flag (valid in responses)                       授权回答标志 (仅响应有效)
    bit<1>  tc;       // Truncated Flag (set if packet exceeds 512 bytes)                     截断标志 (报文超过 512 字节时设置)
    bit<1>  rd;       // Recursion Desired Flag (client requests recursion)                   递归查询标志 (客户端请求递归解析)
    bit<1>  ra;       // Recursion Available Flag (server supports recursion)                 递归可用标志 (服务器支持递归解析)
    bit<3>  z;        // Reserved Field (must be 0)                                           保留字段 (必须为 0)
    bit<4>  rcode;    // Return Code (0=no error, 1=format error, 2=server failure, ...)      返回码 (0=无错误, 1=格式错误, 2=服务器故障, ...)
    bit<16> qdcount;  // Number of questions                                                  查询问题数
    bit<16> ancount;  // Number of answer resource records                                    回答资源记录数
    bit<16> nscount;  // Number of authority resource records                                 授权记录数
    bit<16> arcount;  // Number of additional resource records                                附加记录数
}
