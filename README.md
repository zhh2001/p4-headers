# P4 Protocol Headers Library

### Welcome!

This repository provides ​ready-to-use P4 header definitions for common network protocols (L2-L7). Use freely for research, prototyping, or production.

### Need Help?

Open an Issue if you:
- Find incorrect header definitions
- Want to request a new protocol
- Need usage examples

### Want to Contribute?

PRs are welcome!

---

# P4 协议报头库

### 欢迎使用！​

本仓库提供开箱即用的 P4 协议报头定义​（L2-L7），支持科研、原型开发或生产环境。

### 遇到问题？

欢迎提交 Issue：

- 发现报头定义错误
- 需要新增协议支持
- 需要使用案例

### 参与贡献

接受 PR 贡献！

### 目前已有协议

| Filename       | Abbr        | Full Name                                                | Chinese Translation                  |
| -------------- | ----------- | -------------------------------------------------------- | ------------------------------------ |
| `ail.p4`       | AI-Lossless | Artificial Intelligence driven lossless network protocol |                                      |
| `arp.p4`       | ARP         | Address Resolution Protocol                              | 地址解析协议                         |
| `bgp.p4`       | BGP         | Border Gateway Protocol                                  | 边界网关协议                         |
| `bgp_ls.p4`    | BGP-LS      | BGP Link-State                                           |                                      |
| `bgp_sr.p4`    | BGP-SR      | BGP Segment Routing Extensions                           |                                      |
| `bsnp.p4`      | BSNP        | Biosensor Network Protocol                               |                                      |
| `capwap.p4`    | CAPWAP      | Control And Provisioning of Wireless Access Points       | 控制的无线接入点和配置协议           |
| `cbs.p4`       | CBS         | Credit-Based Shaper                                      | 基于信用的流量整形协议               |
| `cqf.p4`       | CQF         | Cyclic Queuing and Forwarding                            | 周期性排队与转发协议                 |
| `dhcp.p4`      | DHCP        | Dynamic Host Configuration Protocol                      | 动态主机配置协议                     |
| `dhcpv6.p4`    | DHCPv6      | IPv6 version of Dynamic Host Configuration Protocol      | 动态主机配置协议（针对 IPv6 网络）   |
| `dns.p4`       | DNS         | Domain Name System protocol                              | 域名解析协议                         |
| `dosp.p4`      | DOSP        | Digital Olfaction Streaming Protocol                     |                                      |
| `dpdk.p4`      | DPDK        | Data Plane Development Kit acceleration protocol         |                                      |
| `ethernet.p4`  | Ethernet    | Ethernet II                                              | 以太网协议                           |
| `fp.p4`        | FP          | Frame Preemption                                         | 帧抢占协议                           |
| `frer.p4`      | FRER        | Frame Replication and Elimination for Reliability        | 帧复制消除协议                       |
| `ftp.p4`       | FTP         | File Transfer Protocol                                   | 文件传输协议                         |
| `geneve.p4`    | GENEVE      | Generic Network Virtualization Encapsulation             | 通用网络虚拟化封装                   |
| `gnmi.p4`      | gNMI        | gRPC Network Management Interface protocol               | 基于 gRPC 的网络管理接口协议         |
| `gnoi.p4`      | gNOI        | gRPC Network Operations Interface protocol               | 基于 gRPC 的网络设备操作接口协议     |
| `gptp.p4`      | gPTP        | Generalized Precision Time Protocol                      | 时间同步协议                         |
| `gre.p4`       | GRE         | Generic Routing Encapsulation protocol                   | 通用路由封装协议                     |
| `gsdp.p4`      | GSDP        | Genomic Sequencing Data Protocol                         |                                      |
| `gtp_u.p4`     | ​GTP-U      | GPRS Tunneling Protocol User Plane                       |                                      |
| `holotp.p4`    | HoloTP      | Holographic Transport Protocol                           |                                      |
| `hpcx.p4`      | HPC-X       | High Performance Computing communication protocol        |                                      |
| `http.p4`      | HTTP/1.1    | Hypertext Transfer Protocol version 1.1                  | 超文本传输协议                       |
| `http2.p4`     | HTTP/2      | Hypertext Transfer Protocol version 2                    | 超文本传输协议                       |
| `http3.p4`     | HTTP/3      | Hypertext Transfer Protocol version 3                    | 超文本传输协议                       |
| `icmp.p4`      | ICMP        | Internet Control Message Protocol                        | 互联网控制报文协议                   |
| `icmpv6.p4`    | ICMPv6      | Internet Control Message Protocol version 6              | 互联网控制信息协议（针对 IPv6 网络） |
| `igmp.p4`      | IGMP        | Internet Group Management Protocol                       | 互联网组管理协议                     |
| `int.p4`       | INT         | In-band Network Telemetry                                | 带内网络遥测                         |
| `ipfix.p4`     | IPFIX       | IP Flow Information Export                               | IP 数据流信息输出                    |
| `ipsec.p4`     | IPSec       | Internet Protocol Security                               | IP 安全协议                          |
| `ipv4.p4`      | IPv4        | Internet Protocol version 4                              | 互联网协议第 4 版                    |
| `ipv6.p4`      | IPv6        | Internet Protocol version 6                              | 互联网协议第 6 版                    |
| `isis.p4`      | IS-IS       | Intermediate System to Intermediate System               | 中间系统到中间系统的路由选择协议     |
| `islcp.p4`     | ISLCP       | Inter-Satellite Laser Communication Protocol             |                                      |
| `lacp.p4`      | LACP        | Link Aggregation Control Protocol                        | 链路汇聚控制协议                     |
| `ldap.p4`      | LDAP        | Lightweight Directory Access Protocol                    | 轻量级目录访问协议                   |
| `lisp.p4`      | LISP        | Locator/Identifier Separation Protocol                   | 定位/标识分离协议                    |
| `lldp.p4`      | LLDP        | Link Layer Discovery Protocol                            | 链路层发现协议                       |
| `lwapp.p4`     | LWAPP       | Lightweight Access Point Protocol                        | 轻量级无线接入点协议                 |
| `modbus.p4`    | Modbus      | Modbus protocol                                          | Modbus 通讯协议                      |
| `mpls.p4`      | MPLS        | Multi-Protocol Label Switching                           | 多协议标签交换                       |
| `msdp.p4`      | MSDP        | Multicast Source Discovery Protocol                      | 组播源发现协议                       |
| `netbios.p4`   | NetBIOS     | Network Basic Input/Output System                        | 网络基本输入输出系统                 |
| `netconf.p4`   | NETCONF     | Network Configuration Protocol                           | 网络配置协议                         |
| `nnp.p4`       | NNP         | Neuromorphic Network Protocol                            |                                      |
| `nsh.p4`       | NSH         | Network Service Header                                   | 网络服务头部                         |
| `ntp.p4`       | NTP         | Network Time Protocol                                    | 网络时间协议                         |
| `nts.p4`       | NTS         | Network Time Security                                    | 网络时间安全协议                     |
| `oc.p4`        | OpenConfig  |                                                          |                                      |
| `ofp.p4`       | OpenFlow    |                                                          |                                      |
| `ospf.p4`      | OSPF        | Open Shortest Path First routing protocol                | 开放式最短路径优先路由协议           |
| `p4runtime.p4` | P4Runtime   |                                                          |                                      |
| `pcep.p4`      | PCEP        | Path Computation Element Protocol                        |                                      |
| `pcep_sr.p4`   | PCEP-SR     | Path Computation Element Protocol for Segment Routing    |                                      |
| `pfc.p4`       | PFC         | Priority-based Flow Control                              | 基于优先级的流量控制                 |
| `pfcp.p4`      | PFCP        | Packet Forwarding Control Protocol                       |                                      |
| `pim.p4`       | PIM         | Protocol Independent Multicast                           | 协议无关组播                         |
| `pppoe.p4`     | PPPoE       | Point-to-Point Protocol Over Ethernet                    | 以太网上的点对点协议                 |
| `psfp.p4`      | PSFP        | Per-Stream Filtering and Policing                        | 流过滤与监管协议                     |
| `ptp.p4`       | PTP         | Precision Time Protocol                                  | 高精度授时协议                       |
| `qscp.p4`      | QSCP        | Quantum-Secure Communication Protocol                    | 量子安全通信协议                     |
| `quic.p4`      | QUIC        | Quick UDP Internet Connections                           | 快速 UDP 网络连接                    |
| `radius.p4`    | RADIUS      | Remote Authentication Dial-In User Service               | 远程认证拨号用户服务                 |
| `restconf.p4`  | RESTCONF    |                                                          |                                      |
| `rip.p4`       | NTP         | Routing Information Protocol                             | 路由信息协议                         |
| `rtp.p4`       | RTP         | Real-time Transport Protocol                             | 实时传输协议                         |
| `sctp.p4`      | SCTP        | Stream Control Transmission Protocol                     | 流控制传输协议                       |
| `sflow.p4`     | sFlow       |                                                          |                                      |
| `sip.p4`       | SIP         | Session Initiation Protocol                              | 会话初始协议                         |
| `smb.p4`       | SMB         | Server Message Block                                     |                                      |
| `smtp.p4`      | SMTP        | Simple Mail Transfer Protocol                            | 简单邮件传输协议                     |
| `snmp.p4`      | SNMP        | Simple Network Management Protocol                       | 简单网络管理协议                     |
| `snmpv3.p4`    | SNMPv3      | Simple Network Management Protocol version 3             | 简单网络管理协议第 3 版              |
| `spb.p4`       | SPB         | Shortest Path Bridging                                   | 最短路径桥接                         |
| `srmpls.p4`    | SR-MPLS     | Segment Routing MPLS                                     | 基于 MPLS 转发平面的段路由           |
| `srv6.p4`      | SRv6        | Segment Routing over IPv6                                | 基于 IPv6 转发平面的段路由           |
| `ssap.p4`      | SSAP        | Space Situational Awareness Protocol                     | 空间态势感知协议                     |
| `stt.p4`       | STT         | Stateless Transport Tunneling                            | 无状态传输隧道                       |
| `tas.p4`       | TAS         | Time-Aware Shaper                                        | 时间感知整形协议                     |
| `tcp.p4`       | TCP         | Transmission Control Protocol                            | 传输控制协议                         |
| `telemetry.p4` | Telemetry   | Model-Driven Telemetry                                   | 模型驱动遥测协议                     |
| `telnet.p4`    | Telnet      | Telnet                                                   | 远程终端协议                         |
| `tftp.p4`      | TFTP        | Trivial File Transfer Protocol                           | 简单文件传输协议                     |
| `udp.p4`       | UDP         | User Datagram Protocol                                   | 用户数据报协议                       |
| `vlan.p4`      | VLAN        | Virtual Local Area Network                               | 虚拟局域网                           |
| `vxlan.p4`     | VXLAN       | Virtual Extensible Local Area Network                    | 虚拟可扩展局域网                     |
| `vxlan_gpe.p4` | VXLAN-GPE   | VXLAN - Generic Protocol Extension                       |                                      |
| `websocket.p4` | WebSocket   | WebSocket                                                |                                      |
| `yang.p4`      | YANG        | Yet Another Next Generation                              |                                      |
