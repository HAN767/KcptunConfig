#!/bin/sh
#   -l 服务端口
cd /Users/finn/kcptun/
./kcp_server  -c server_config.json > kcptun.log 2>&1 &
echo "Kcptun_Server started."
