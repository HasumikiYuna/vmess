#!/bin/bash
bash <(curl -Ls https://raw.githubusercontent.com/AikoXrayR-Project/AikoXrayR-install/master/install.sh)

read -p " ID NODE Cổng 80: " node_id1
  [ -z "${node_id1}" ] && node_id1=0
  
read -p " ID NODE Cổng 443: " node_id2
  [ -z "${node_id2}" ] && node_id2=0
  
    read -p "là cái ip vps: " subdomain80
  [ -z "$subdomain80" ] && subdomain80="0"

      read -p "subdomain trên cf: " subdomain443
  [ -z "$subdomain443" ] && subdomain443="0"
  
      read -p "Limitspeed: " speed
  [ -z "$subdomain443" ] && speed="0"
  
      read -p "limit device: " devi
  [ -z "$devi" ] && devi="0"

  
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
  Level: none 
  AccessPath: # /etc/XrayR/access.Log
  ErrorPath: # /etc/XrayR/error.log
DnsConfigPath: # /etc/XrayR/dns.json
InboundConfigPath: # /etc/XrayR/custom_inbound.json
RouteConfigPath: # /etc/XrayR/route.json
OutboundConfigPath: # /etc/XrayR/custom_outbound.json
ConnetionConfig:
  Handshake: 4 
  ConnIdle: 30 
  UplinkOnly: 2 
  DownlinkOnly: 4 
  BufferSize: 64 
Nodes:
  -
    PanelType: "V2board" 
    ApiConfig:
      ApiHost: "https://project4gyuna.pw"
      ApiKey: "ultimate1234yuna"
      NodeID1: 29
      NodeType: V2ray 
      Timeout: 30 
      EnableVless: false 
      EnableXTLS: false 
      SpeedLimit: $speed 
      DeviceLimit: $devi 
      RuleListPath: # /etc/XrayR/rulelist
    ControllerConfig:
      DisableSniffing: True
      ListenIP: 0.0.0.0 
      SendIP: 0.0.0.0 
      UpdatePeriodic: 60 
      EnableDNS: false 
      DNSType: AsIs 
      EnableProxyProtocol: false 
      EnableFallback: false 
      FallBackConfigs:  
        -
          SNI: 
          Path: 
          Dest: 80 
          ProxyProtocolVer: 0 
      CertConfig:
        CertMode: none 
        CertDomain: "$subdomain80" 
        CertFile: /etc/XrayR/cert/node1.test.com.cert 
        KeyFile: /etc/XrayR/cert/node1.test.com.key
        Provider: alidns 
        Email: test@me.com
        DNSEnv: 
          ALICLOUD_ACCESS_KEY: aaa
          ALICLOUD_SECRET_KEY: bbb
  -
    PanelType: "V2board" 
    ApiConfig:
      ApiHost: "https://project4gyuna.pw"
      ApiKey: "ultimate1234yuna"
      NodeID2: 30
      NodeType: V2ray 
      Timeout: 30 
      EnableVless: false 
      EnableXTLS: false 
      SpeedLimit: $speed 
      DeviceLimit: $devi 
      RuleListPath: # /etc/XrayR/rulelist
    ControllerConfig:
      DisableSniffing: True
      ListenIP: 0.0.0.0 
      SendIP: 0.0.0.0 
      UpdatePeriodic: 60 
      EnableDNS: false 
      DNSType: AsIs 
      EnableProxyProtocol: false 
      EnableFallback: false 
      FallBackConfigs:  
        -
          SNI: 
          Path: 
          Dest: 80 
          ProxyProtocolVer: 0 
      CertConfig:
        CertMode: file 
        CertDomain2: "$subdomain443" 
        CertFile: /etc/XrayR/abc.crt 
        KeyFile: /etc/XrayR/abc.key
        Provider: cloudflare 
        Email: test@me.com
        DNSEnv: 
          CLOUDFLARE_EMAIL: 
          CLOUDFLARE_API_KEY: 
EOF
sed -i "s|NodeID1:.*|NodeID: ${node_id1}|" ./config.yml
sed -i "s|NodeID2:.*|NodeID: ${node_id2}|" ./config.yml
sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1
sudo sysctl -w net.ipv6.conf.default.disable_ipv6=1
sudo sysctl -w net.ipv6.conf.lo.disable_ipv6=1
cd /root
xrayr restart
reboot
