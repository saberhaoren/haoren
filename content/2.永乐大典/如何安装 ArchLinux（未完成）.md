# 从 ArchLinux Live 环境安装 ArchLinux
## 0 预先准备
[制作 Live 环境](/2.永乐大典/如何制作-Linux-Live-环境并启动)
## 1 Welcome to ArchLinux!
刚进入 Live 环境时，会显示如下内容，单击回车<br>
![[archlinux_boot.png]]
接着屏幕会显示内核启动消息，并出现如下内容<br>
![[archlinux_welcome.png]]
欢迎来到 ArchLinux 的世界!<br>
![[archlinux_shell.png]]
直到出现这个界面，就说明已经进入了 Live 环境，可以开始安装
## 2 进入安装界面 (手动安装)
> [!Note]
> 暂时没有考虑笔记本电脑的联网，ArchLinux 要求在线安装

在终端输入
```type="bash"
pacman -S archinstall --noconfirm && archinstall
```
进入安装界面
> [!Note]
> ArchLinux 安装器只支持英语

![[archinstall_base.png]]

在这个页面中，可以看到有很多设置选项，其中比较重要的是<br>
Mirrors (镜像): 用于加快下载速度<br>
Locales (地区): 用于设置语言<br>
Disk configuration (硬盘设置)：设置安装位置<br>
Bootloader (引导): 对于正常用户影响不大，但直接决定将来对系统的美化<br>
Swap (交换内存): 在 Windows 上称虚拟内存，增加内存使用效率，减少卡顿<br>
Root password (根密码): 在 Linux 中为必选项，且在将后的系统滚动更新和安装软件过程中会用到<br>
User account (用户): 在 Windows 上默认为 Administrator，不过在 Linux 上必须设置名称和密码<br>
Profile: 决定整个系统的外观<br>
Audio (音频)<br>
Network configuration (网络设置): 用于在图形化界面中连接无线网络<br>

## 3.1 镜像
通过键盘上下键移动焦点至 Mirrors 上，按下两次回车

![[archinstall_mirror.png]]

出现该界面后，移动焦点至 China, 并按下回车

![[archinstall_mirror_done.png]]

随后，移动焦点至 Back, 返回第一页

## 3.2 语言和地区

移动焦点至 Locales, 按下回车

![[archinstall_locale.png]]

再次移动焦点至 Locale language, 按下回车

![[archinstall_locale_0.png]]

在该界面下输入 /zh_CN.UTF-8, 并按下回车

![[archinstall_locale_done.png]]

移动焦点至 Back, 返回第一页

## 3.3 磁盘设置

移动焦点至 Disk configuration, 并按下三次回车

![[archinstall_disk.png]]

每一列分别为：<br>
Model: 设备型号<br>
Path: Linux 中的磁盘设备位置<br>
Type: 磁盘类型<br>
Size: 磁盘大小<br>
Free Space: 空余空间<br>
Sector size: 扇区大小<br>
Read only: 是否只读，True 为只读，False 为可度可写<br>
在这里寻找正确的磁盘，具体寻找过程查看 [制作 Live 环境](/2.永乐大典/如何制作-Linux-Live-环境并启动#2-创建-live-环境) 的第二小节<br>
将焦点移动至正确的硬盘上，按下回车

![[archinstall_disk_0.png]]

将焦点移动到 xfs, 按下回车

![[archinstall_disk_1.png]]

将焦点移动到 no, 按下回车

