# 使用 Linux 制作 Linux Live 环境
## 0 Linux 分区/文件系统规则
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
sudo dd if=/dev/zero of=/dev/sda
// 向硬盘 /dev/sda 上所有的扇区写入0
```

linux 中没有盘符的概念，所有文件都存在于根目录 ("/") 中，通过挂载点管理多分区文件系统
```type="bash"
sudo mount /dev/sda1 /mnt
// 将硬盘分区 /dev/sda1 挂载至 /mnt 目录，此时可以通过访问 /mnt 目录查看 /dev/sda1 分区中的文件
sudo umount /dev/sda1 或 sudo umount /mnt
// 解除 /dev/sda1 的挂载
```

## 1 所需工具

1. 需安装 Linux 操作系统的电脑

2. 另一台正常使用的 Linux 操作系统的电脑（可选，用于制作启动U盘和搜索解决安装过程中出现的其他问题）

3. 16GB以上的U盘或者移动硬盘

4. linux系统镜像iso文件

## 2 创建 Live 环境

> [!NOTE]
> 注意！您的U盘里存放的数据会被清除，请您提前备份

1. 下载 linux (以 「ArchLinux」 为例) ISO

```type="bash"
ArchLinux iso 下载地址：https://mirrors.aliyun.com/archlinux/iso/2024.07.01/archlinux-2024.07.01-x86_64.iso
注：应当将链接中的两处 2024.07 替换为安装时的日期
```

输入浏览器的地址栏并单击回车，等待下载完成

2. 定位 U 盘
> [!NOTE]
> 如果需要在 Windows 操作系统上制作 Live 环境，请查看 [如何安装操作系统](/2.永乐大典/如何安装操作系统) 并使用 rufus 软件创建 Live 环境，并跳转至本教程的第三步继续

插入 U 盘，在命令行中输入 
```type="bash"
lsblk -f
```
你应该可以得到以下输入结果
![[linux_lsblk.png]]
列含义：<br>
NAME: linux 中的设备名，省略了 "/dev/"<br>
FSTYPE: 文件系统类型，例如 Windows 的 ntfs, linux 的 ext4, zfs 和 btrfs, 以及通用的 vfat 等<br>
FSVER: 文件系统版本<br>
LABEL: 硬盘分区卷标<br>
UUID: 硬盘分区的唯一(Unique) UID, 用于定位硬盘分区<br>
FSAVAIL: 硬盘分区可用大小<br>
FSUSE: 硬盘已用百分比，硬盘分区大小可通过 FSAVAIL / (1 - FSUSE) 计算得出<br>
MOUNTPOINTS: 挂载点<br>

记下 U 盘的卷标和大小，并获取其设备名称<br>
例如 U 盘位于 /dev/sda

3. 写入 ISO
在命令行中输入 
```type="bash"
sudo dd if=～/Downloads/archlinux-2024.07.01-x86_64.iso of=/dev/sda
// 输入你的密码，等待命令执行完成
```

## 3 启动 Live 环境
1. 从 U 盘启动
确保电脑处于关机状态，按电源键开机，在看到品牌标志图片时按下f2（不同电脑和主板进入的方式不同），进入启动项选择的界面，使用上下键选择您的USB设备并按下回车键进入。

![[boot.png]]
![[bootmanager.png]]

## 4 继续安装
这时待安装 Linux 的电脑应该已经进入了 Live 环境，点击下方的链接继续安装进程<br>
「ArchLinux」发行版 --- [安装 ArchLinux](/2.永乐大典/如何安装-ArchLinux（未完成）)
