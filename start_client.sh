#!/bin/bash
cd /Users/finn/kcptun/
./client_darwin_amd64 -c  client-config.json > kcptun.log 2>&1 &
echo "Kcptun_Client started"