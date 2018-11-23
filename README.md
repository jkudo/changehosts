# changehosts
A script that writes the IP (A record) of the FQDN that changes regularly, such as load balancer, into the hosts file.

Ex: When examining proprietary domains on a load balancer whose public cloud IP is periodically changed.

ロードバランサーなど定期的に変わるFQDNのIP（Aレコード）をhostsファイルに書き込むスクリプト。

利用シーン：パブリッククラウドのIPが定期的に変更されるロードバランサーで独自ドメインの試験を行う場合。

# usage
`# changehosts.sh BEFORE_HOST AFTER_HOST`

# example
`# changehosts.sh xxxxx-xxxxxxxxx.us-east-1.elb.amazonaws.com xxxxx.example.com`

```
# cat /etc/hosts
127.0.0.1 localhost

# The following lines are desirable for IPv6 capable hosts
::1 ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
ff02::3 ip6-allhosts
xxx.xxx.xxx.xxx xxxxx.example.com
yyy.yyy.yyy.yyy xxxxx.example.com
```
