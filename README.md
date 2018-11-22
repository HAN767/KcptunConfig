## Kcptun 
> KCP是一个快速牢靠协议,它可以将TCP流替换成KCP+UDP流,而Kcptun基于KCP的一个加速软件[更多介绍参见这里](https://github.com/xtaci/kcptun) , 本文只介绍Mac&Ubuntu平台下环境搭建


#### 客户端与服务端
* [_下载链接_](https://github.com/xtaci/kcptun/releases)
    * MacOS下载`kcptun-darwin-amd64-20181114.tar.gz`
    * Ubuntu下载`kcptun-linux-amd64-20181114.tar.gz`
* 解压后可以看到`client_darwin_amd64`,`server_darwin_amd64`这两个文件就是客户端与服务端了,至于怎么启动后面讲

#### 配置文件
* 本地创建个`~/kcptun`,把上述文件copy进来
* 然后创建服务端的配置文件`server-config.json`

```json
{
  "listen": ":29900",
  "target": "102.44.61.33:13281",
  "key": "test",
  "crypt": "aes",
  "mode": "fast2",
  "mtu": 1350,
  "sndwnd": 512,
  "rcvwnd": 512,
  "datashard": 10,
  "parityshard": 3,
  "dscp": 0,
  "nocomp": false,
  "quiet": false,
  "pprof": false
}

```


* 在创建客户端的配置文件`server-config.json`

```json
{
  "localaddr": ":13281",
  "remoteaddr": "127.0.0.1:29900",
  "key": "test",
  "crypt": "aes",
  "mode": "fast2",
  "mtu": 1350,
  "sndwnd": 512,
  "rcvwnd": 512,
  "datashard": 10,
  "parityshard": 3,
  "dscp": 0,
  "nocomp": false,
  "quiet": false
}
```

* 除下面表格中的字段替换成自己的以外,其它配置信息不要改

字段|含义
--|--
102.44.61.33|你购买的VPN服务地址
13281|你购买的VPN服务端口

#### SS配置

<img src="http://p0fjq92nc2.bkt.clouddn.com/18-11-22/45736710.jpg" width="500" hegiht="313" align=center />

* 这里密码是你购买VPN服务指代的密码

#### 怎么用

```bash
~/kcptun
# 启动kcptun服务
./server_darwin_amd64 -c server-config.json &
# 启动kcptun客户端
./client_darwin_amd64 -c client-config.json & 
# 查看是否启动成功
ps aux | grep -v grep | grep -i darwin

```

* 将SS指向刚刚创建的服务  

<img src="http://p0fjq92nc2.bkt.clouddn.com/18-11-22/61189423.jpg" width="500" hegiht="313" align=center />  


* OK  访问下youtube
