#!/bin/sh
#   -l 服务端口
cd /Users/finn/kcptun/
./server_darwin_amd64 -l ":2333" -c server_config.json > kcptun.log 2>&1 &
echo "Kcptun_Server started."
