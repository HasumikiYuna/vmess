#!/bin/bash
bash <(curl -Ls https://raw.githubusercontent.com/HasumikiYuna/vmess/main/install.sh)

read -p " ID NODE Cổng 443-1: " node_id1
  [ -z "${node_id1}" ] && node_id1=0
  
read -p " ID NODE Cổng 443-2: " node_id2
  [ -z "${node_id2}" ] && node_id2=0
  
    read -p "subdomain: " subdomain80
  [ -z "$subdomain80" ] && subdomain80="0"
  
  
cd /etc/XrayR
cat >abc.crt <<EOF
-----BEGIN CERTIFICATE-----
MIIErDCCA5SgAwIBAgIUf2Ess7nVhqdoekRY8j4i5lh4kk8wDQYJKoZIhvcNAQEL
BQAwgYsxCzAJBgNVBAYTAlVTMRkwFwYDVQQKExBDbG91ZEZsYXJlLCBJbmMuMTQw
MgYDVQQLEytDbG91ZEZsYXJlIE9yaWdpbiBTU0wgQ2VydGlmaWNhdGUgQXV0aG9y
aXR5MRYwFAYDVQQHEw1TYW4gRnJhbmNpc2NvMRMwEQYDVQQIEwpDYWxpZm9ybmlh
MB4XDTIyMTIwOTE4NDEwMFoXDTM3MTIwNTE4NDEwMFowYjEZMBcGA1UEChMQQ2xv
dWRGbGFyZSwgSW5jLjEdMBsGA1UECxMUQ2xvdWRGbGFyZSBPcmlnaW4gQ0ExJjAk
BgNVBAMTHUNsb3VkRmxhcmUgT3JpZ2luIENlcnRpZmljYXRlMIIBIjANBgkqhkiG
9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlUz3bzy+EEm2uiHX1EaecIjZPWypxHF84Q7N
nc6u3pD2CwVyCv7FOShhrOJnILnyyEqjNdLgmJLf9cAFTO3uLu45oz1C7ekfkOoe
TMhLuQbDuExM3fMwyy/x+NNEDcE8hQyvu8dMC4diCo15QoFLk2mm0JbijKiYUdFF
Bq2MN8LvuEcYp4BnXPwyMhshIIm8byI8hNHlH8iGvDEi+XEnzLyk3EXzEsJU1hp7
4IDIDY1+hnDDk7Oo7oBorgD+pTAqD9su+RnpIbnBJevtz48DCAAeo4My0FW6mtnJ
pOVMaYo9MXXvq40gQDOL+XtgGUpfamRwkuMUS8bo3Ds5P3qoTwIDAQABo4IBLjCC
ASowDgYDVR0PAQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcD
ATAMBgNVHRMBAf8EAjAAMB0GA1UdDgQWBBSN2m1qyJnMRd0maVgiCDQUIPywxDAf
BgNVHSMEGDAWgBQk6FNXXXw0QIep65TbuuEWePwppDBABggrBgEFBQcBAQQ0MDIw
MAYIKwYBBQUHMAGGJGh0dHA6Ly9vY3NwLmNsb3VkZmxhcmUuY29tL29yaWdpbl9j
YTAvBgNVHREEKDAmghIqLnByb2plY3Q0Z3l1bmEucHeCEHByb2plY3Q0Z3l1bmEu
cHcwOAYDVR0fBDEwLzAtoCugKYYnaHR0cDovL2NybC5jbG91ZGZsYXJlLmNvbS9v
cmlnaW5fY2EuY3JsMA0GCSqGSIb3DQEBCwUAA4IBAQCHJxxXfmo2KzsTVoQ69zp8
V/+Hu/xD4wX4QgtlyiSgQOO6FbHXIRBnU1WccJgavMgWCbQlGs0I79yaQF8qQw7n
h92eYow9lsWtWeYuhrBG8VJyU2tCmPEQJOin3edjup/ECTAPijRwzxbAwiuE7ZCR
6cmWepqOd/4+dTlVuPABhk4lJ58lnNTCGiGX3wRtAsbBFceoYoI3TKBOskckfYA9
CaAUL/qTUfZc5hliBK8PZFCF9aoAyiRvs6G6iMRGGCjJBTFqxpfRmDbeREx8IrFy
iOMDFxp6qbSeCF5zR2QBrMOTe9HKWFVvVtk2yYMwRLr69ST87pl38DmTbaVhXVIE
-----END CERTIFICATE-----

EOF
cat >abc.key <<EOF
-----BEGIN PRIVATE KEY-----
MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCVTPdvPL4QSba6
IdfURp5wiNk9bKnEcXzhDs2dzq7ekPYLBXIK/sU5KGGs4mcgufLISqM10uCYkt/1
wAVM7e4u7jmjPULt6R+Q6h5MyEu5BsO4TEzd8zDLL/H400QNwTyFDK+7x0wLh2IK
jXlCgUuTaabQluKMqJhR0UUGrYw3wu+4RxingGdc/DIyGyEgibxvIjyE0eUfyIa8
MSL5cSfMvKTcRfMSwlTWGnvggMgNjX6GcMOTs6jugGiuAP6lMCoP2y75GekhucEl
6+3PjwMIAB6jgzLQVbqa2cmk5Uxpij0xde+rjSBAM4v5e2AZSl9qZHCS4xRLxujc
Ozk/eqhPAgMBAAECggEAH/OgUpiLzn2QEwaSI5ZXaxsGbuxV6rok8R9TZs3oQ65/
UX2BWhQLDj/zo2Wyj2DsMewzQJ4YPd7U+kl1ePDElBucjzBZpgPJoyBPirwk5Hyr
n0IJA0j77Mgef1NrUYxE0O6Vn1i4EBGRrFN5m3+DNpGaRzK7WkHskzn3jUXP59DG
x/VT7utQMCWxLiN0+PYaVnwzqP52eTTesMi68YQd3U7d2a8dT7ee5lHdxoWT3ZYg
3yz1cVY/Sn0hhXZjzjmWxl13iACGHQlnRd4zEje+NYC1iHtI4DVT97rGDaF+IYEo
q9GUG7GY4MowJiog23/STB6dCrxnYtcQkyjam17zZQKBgQDSaKKikJ/K+i+8127t
FvbvnS2by+fHMm2GxbhaN3VDFFEWo+unk4THND+AzGhk/T6tvAtnPcTKHlogfe+n
NkeLOUnkWamLZUoSt4sztDXB5Oea/dH/Mt/DskOvnOr3G/FvDd8M9Inov7jgLQKE
Gu9QZKFmVMRl6HhmIbkTsmnFOwKBgQC1pqsPwJyZqGzF4x3SpyCbb70CiKJuUSwF
FsMKTEEi6G3VjxkkjvdXzoqtY49gel0sAso/wYvSLZXZmn2JixVSHV+jNjQMe+6F
cLbz55/iOpjpG/ZfOGlSSdluDIyc46wq+wl3gQlI0P+tjbu6FAJM9p0sHORocKQZ
GPBXUkhn/QKBgQCuhKdQmxBOtRDfWvjgocmTmRT5QjkumX8K5/gurA0Q5EsVskSF
q+/XoliBpgl4qixQwcXbjfopgt9ST+J1GKpiqdPGGTBtNEgqGh7VdcWY2xnXDmwd
db7vfG5zvH2PFJg+eozlG/c/G7ZmCi8qD4UrcywDyo9Tz2v9mj7+PV9JfQKBgFNa
tJpY30NfVvKDYnb8e+j3oDreafLHSrTXGg7KqQUUtPnPXVE6TWO8gkRIME2sOL7u
VNJmxPtgMagVzU9lRBZXJkClqcKkx/Hxo/JOMj7EdtBZJXfSUfoRqzVlisyfaKyc
X164FoOUbA6+wAsGDXw1mi/Y3jLSpWpi2D6polIdAoGBAMpuGkCfGnSSYuhGstmx
pvQ7OSivvkUZtfAO4evKG3ejE604C+ZqgbbFKK+mVCR86NfXOZfeXUkGTpY6jjcV
pQP+8K+OLpJjINcwpuwJz1Wt/q1F26s1i2IHiXYpeqTzOoSPs0203f/8vvhZv7Ve
xZ9F/pqCc6mp0NCkOFyAlIoo
-----END PRIVATE KEY-----

EOF
cat >config.yml <<EOF
Log:
  Level: none # Log level: none, error, warning, info, debug 
  AccessPath: # /etc/XrayR/access.Log
  ErrorPath: # /etc/XrayR/error.log
DnsConfigPath: # /etc/XrayR/dns.json # Path to dns config, check https://xtls.github.io/config/dns.html for help
RouteConfigPath: # /etc/XrayR/route.json # Path to route config, check https://xtls.github.io/config/routing.html for help
InboundConfigPath: # /etc/XrayR/custom_inbound.json # Path to custom inbound config, check https://xtls.github.io/config/inbound.html for help
OutboundConfigPath: # /etc/XrayR/custom_outbound.json # Path to custom outbound config, check https://xtls.github.io/config/outbound.html for help
ConnetionConfig:
  Handshake: 4 # Handshake time limit, Second
  ConnIdle: 86400 # Connection idle time limit, Second
  UplinkOnly: 2 # Time limit when the connection downstream is closed, Second
  DownlinkOnly: 4 # Time limit when the connection is closed after the uplink is closed, Second
  BufferSize: 64 # The internal cache size of each connection, kB 
Nodes:
  -
    PanelType: "V2board" # Panel type: SSpanel, V2board, PMpanel, Proxypanel
    ApiConfig:
      ApiHost: "https://lightspeed4g.pw"
      ApiKey: "ultimate1234yuna"
      NodeID1: 1
      NodeType: Trojan # Node type: V2ray, Trojan, Shadowsocks, Shadowsocks-Plugin
      Timeout: 30 # Timeout for the api request
      EnableVless: false # Enable Vless for V2ray Type
      EnableXTLS: false # Enable XTLS for V2ray and Trojan
      SpeedLimit: 0 # Mbps, Local settings will replace remote settings, 0 means disable
      DeviceLimit: 3 # Local settings will replace remote settings, 0 means disable
      RuleListPath: # ./rulelist Path to local rulelist file
    ControllerConfig:
      ListenIP: 0.0.0.0 # IP address you want to listen
      SendIP: 0.0.0.0 # IP address you want to send pacakage
      UpdatePeriodic: 60 # Time to update the nodeinfo, how many sec.
      EnableDNS: false # Use custom DNS config, Please ensure that you set the dns.json well
      DNSType: AsIs # AsIs, UseIP, UseIPv4, UseIPv6, DNS strategy
      DisableUploadTraffic: false # Disable Upload Traffic to the panel
      DisableGetRule: false # Disable Get Rule from the panel
      DisableIVCheck: false # Disable the anti-reply protection for Shadowsocks
      EnableProxyProtocol: false # Only works for WebSocket and TCP
      EnableFallback: false # Only support for Trojan and Vless
      FallBackConfigs:  # Support multiple fallbacks
        -
          SNI: # TLS SNI(Server Name Indication), Empty for any
          Path: # HTTP PATH, Empty for any
          Dest: 80 # Required, Destination of fallback, check https://xtls.github.io/config/fallback/ for details.
          ProxyProtocolVer: 0 # Send PROXY protocol version, 0 for dsable
      CertConfig:
        CertMode: dns # Option about how to get certificate: none, file, http, dns. Choose "none" will forcedly disable the tls config.
        CertDomain: "$subdomain80" # Domain to cert
        CertFile: ./etc/XrayR/server.pem # Provided if the CertMode is file
        KeyFile: ./etc/XrayR/privkey.pem
        Provider: cloudflare # DNS cert provider, Get the full support list here: https://go-acme.github.io/lego/dns/
        Email: test@me.com
        DNSEnv: # DNS ENV option used by DNS provider
          CLOUDFLARE_EMAIL: miniwa2509@gmail.com
          CLOUDFLARE_API_KEY: dd6b0ab29d9f421cdad28995cea82593fec61
  -
    PanelType: "V2board" # Panel type: SSpanel, V2board, PMpanel, Proxypanel
    ApiConfig:
      ApiHost: "http://lightspeed4g.pw/"
      ApiKey: "ultimate1234yuna"
      NodeID2: 1
      NodeType: Trojan # Node type: V2ray, Trojan, Shadowsocks, Shadowsocks-Plugin
      Timeout: 30 # Timeout for the api request
      EnableVless: false # Enable Vless for V2ray Type
      EnableXTLS: false # Enable XTLS for V2ray and Trojan
      SpeedLimit: 0 # Mbps, Local settings will replace remote settings, 0 means disable
      DeviceLimit: 3 # Local settings will replace remote settings, 0 means disable
      RuleListPath: # ./rulelist Path to local rulelist file
    ControllerConfig:
      ListenIP: 0.0.0.0 # IP address you want to listen
      SendIP: 0.0.0.0 # IP address you want to send pacakage
      UpdatePeriodic: 60 # Time to update the nodeinfo, how many sec.
      EnableDNS: false # Use custom DNS config, Please ensure that you set the dns.json well
      DNSType: AsIs # AsIs, UseIP, UseIPv4, UseIPv6, DNS strategy
      DisableUploadTraffic: false # Disable Upload Traffic to the panel
      DisableGetRule: false # Disable Get Rule from the panel
      DisableIVCheck: false # Disable the anti-reply protection for Shadowsocks
      EnableProxyProtocol: false # Only works for WebSocket and TCP
      EnableFallback: false # Only support for Trojan and Vless
      FallBackConfigs:  # Support multiple fallbacks
        -
          SNI: # TLS SNI(Server Name Indication), Empty for any
          Path: # HTTP PATH, Empty for any
          Dest: 80 # Required, Destination of fallback, check https://xtls.github.io/config/fallback/ for details.
          ProxyProtocolVer: 0 # Send PROXY protocol version, 0 for dsable
      CertConfig:
        CertMode: dns # Option about how to get certificate: none, file, http, dns. Choose "none" will forcedly disable the tls config.
        CertDomain: "$subdomain80" # Domain to cert
        CertFile: /etc/XrayR/server.pem # Provided if the CertMode is file
        KeyFile: /etc/XrayR/privkey.pem
        Provider: cloudflare # DNS cert provider, Get the full support list here: https://go-acme.github.io/lego/dns/
        Email: test@me.com
        DNSEnv: # DNS ENV option used by DNS provider
          CLOUDFLARE_EMAIL: aaa
          CLOUDFLARE_API_KEY: bbb

EOF
sed -i "s|NodeID1:.*|NodeID: ${node_id1}|" ./config.yml
sed -i "s|NodeID2:.*|NodeID: ${node_id2}|" ./config.yml

xrayr restart

