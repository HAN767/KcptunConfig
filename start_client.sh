#!/bin/bash
cd /Users/finn/kcptun/
./kcp_client -c  client_config.json > kcptun.log 2>&1 &
echo "Kcptun_Client started"