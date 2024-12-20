#!/bin/sh

#Config v2ray

rm -rf /etc/xray/config.json
cat << EOF > config.json
{
  "inbounds": [
    {
      "port": 80,
      "protocol": "vless",
      "settings": {
        "decryption": "none",
        "clients": [
          {
            "id": "8b113b4e-c435-4ec5-85fe-9be877cf7b5c"
          }
        ]
      },
      "streamSettings": {
        "network": "ws"
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom"
    }
  ]
}
EOF

#run v2ray server

v2ray run -c config.json
