# 使用 Linux 安装 Linux 
## 0 Linux 分区规则
Linux「一切皆文件」，连硬盘和其分区也是一个「文件」<br>
对于机械硬盘：<br>
    硬盘设备本身位于 /dev/sdX, X为a-z字母<br>
    硬盘分区位于 /dev/sdXY, Y为一个从1开始的数字<br>
对于固态硬盘：<br>
    硬盘主控芯片位于 /dev/nvmeX, X为从0开始的数字<br>
    硬盘存储器位于 /dev/nvmeXnY, Y为从0开始的数字<br>
    硬盘分区位于 /dev/nvmeXnYpZ, Z为一个从1开始的数字<br>

> [!NOTE]
> 注意！该设备会损坏硬盘上的分区表，MBR或引导，请谨慎操作<br>

通过 linux 终端的操作，可以直接写入数据到一个硬盘设备或分区中<br>
例如：
```type="bash"
dd if=/dev/zero of=/dev/sda
// 向硬盘 /dev/sda 上所有的扇区写入0
```

## 1 所需工具

1. 需安装 Linux 操作系统的电脑

2. 另一台正常使用的 Linux 操作系统的电脑（可选，用于制作启动U盘和搜索解决安装过程中出现的其他问题）

3. 16GB以上的U盘或者移动硬盘

4. linux系统镜像iso文件

## 2 创建 Live 环境

> [!NOTE]
> 注意！您的U盘里存放的数据会被清除，请您提前备份

1. 下载 linux (ArchLinux) ISO

```type="bash"
Archlinux iso 下载地址：https://mirrors.aliyun.com/archlinux/iso/2024.07.01/archlinux-2024.07.01-x86_64.iso
注：应当将链接中的两处 2024.07 替换为安装时的日期
```

输入浏览器的地址栏并单击回车，等待下载完成

2. 定位 U 盘
插入 U 盘，在命令行中输入 
```type="bash"
lsblk -f
```
你应该可以得到以下输入结果
![[linux_lsblk.png]]
