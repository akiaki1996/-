# 关于配置无人值守录播姬的记录

## 录播系统配置信息
debian 上配置两台录播姬: bililiverecorder 和 blrec
其中blrec 需要更改正确的礼物份额，bililiverecorder在网络波动的情况下需要合并删除一些多余的文件


## 目前仍然需要解决的问题
* 便宜的服务器带宽有限，目前的解决方案:
1. 使用rclone 挂载onedrive，但是问题仍然在于无法进行快速的上下传（受限于带宽）不过好处是同时不用手动删除旧的录播文件（考虑到空间有限）
2. 花钱增加带宽

[配置rclone，挂载onedrive](https://333rd.net/posts/tech/linux%E4%BD%BF%E7%94%A8rclone%E6%8C%82%E8%BD%BDonedrive%E7%BD%91%E7%9B%98/)\
[使用rclone扩展服务器硬盘](https://cloud.tencent.com/developer/article/1936298)
* 空间不够，目前的解决办法是挂在硬盘，同样要花钱。比较经济合适的是挂在onedrive。

## 未来的构思
1. 在下载文件之前就已经可以制作好ass文件。
2. 制作录播站
3. 制作补档站
