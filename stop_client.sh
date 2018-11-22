#!/bin/sh
PID=`ps -ef | grep kcp_client | grep -v grep | awk '{print $2}'`
if [ "" != "$PID" ]; then
 echo "killing $PID"
 sudo kill -9 $PID
else
 echo "Kcptun not running!"
fi
