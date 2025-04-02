/* P4_16 */

#define V1MODEL_VERSION 20250101

#include <core.p4>
#include <v1model.p4>

header http_request_t {
    bit<8>   method;          // HTTP Method (e.g., GET=1, POST=2, PUT=3, DELETE=4)     HTTP 方法 (如 GET=1, POST=2, PUT=3, DELETE=4)
    bit<128> uri;             // Request URI (e.g., "/index.html", "/api/data")         请求URI (如"/index.html", "/api/data")
    bit<32>  version;         // HTTP Version (e.g., 0x0100=HTTP/1.0, 0x0110=HTTP/1.1)  HTTP 版本 (如 0x0100=HTTP/1.0, 0x0110=HTTP/1.1)
    bit<32>  headers_length;  // Total length of headers (for fast parsing)             报头总长度 (用于快速解析)

    // 常见 HTTP 头部字段 (可扩展为动态字段)
    bit<128> host;            // Hostname (e.g., "www.example.com")                                            主机名 (如 "www.example.com")
    bit<8>   connection;      // Connection Type (e.g., "keep-alive=1", "close=0")                             连接类型 (如 "keep-alive=1", "close=0")
    bit<32>  content_length;  // Length of the request body (valid for POST/PUT methods)                       请求体长度 (仅在 POST/PUT 等方法中有效)
    bit<128> user_agent;      // User Agent (e.g., "Mozilla/5.0")  用户代理 (如"Mozilla/5.0")
    bit<128> accept;          // Accepted content types (e.g., "text/html", "application/json")                接受的内容类型 (如 "text/html", "application/json")
    bit<128> content_type;    // Content type of the request body (e.g., "application/x-www-form-urlencoded")  请求体类型 (如 "application/x-www-form-urlencoded")
    bit<32>  authorization;   // Authorization information (e.g., Bearer Token)  认证信息 (如 Bearer Token)

    // 可选字段 (动态扩展)
    bit<variable> options;  // Other optional header fields  其他可选头部字段
}
