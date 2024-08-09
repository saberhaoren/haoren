# 从 ArchLinux Live 环境安装 ArchLinux
> [!TIP]
> 如果你是Linux老手的话，你可以尝试着不用archinstall来安装ArchLinux，而是手动安装，这样可以更好的了解ArchLinux的安装过程。
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

## 3 安装前配置

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

### 3.1 镜像
通过键盘上下键移动焦点至 Mirrors 上，按下两次回车

![[archinstall_mirror.png]]

出现该界面后，移动焦点至 China, 并按下回车

![[archinstall_mirror_done.png]]

随后，移动焦点至 Back, 返回第一页

### 3.2 语言和地区

移动焦点至 Locales, 按下回车

![[archinstall_locale.png]]

再次移动焦点至 Locale language, 按下回车

![[archinstall_locale_0.png]]

在该界面下输入 /zh_CN.UTF-8, 并按下回车

![[archinstall_locale_done.png]]

移动焦点至 Back, 返回第一页

### 3.3 磁盘设置

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

将焦点移动到 no, 按下回车, 返回第一页

### 3.4 引导器

移动焦点至 Bootloader, 按下回车

![[archinstall_boot.png]]

移动焦点至 Grub, 按下回车，返回第一页

### 3.5 根密码 & 账户

移动焦点至 Root password, 按下回车<br>
选择一个你能记住的密码, 连续输入两次, 回到第一页
> [!Note]
> 该密码不可遗失，否则你将不能安装任何软件或升级系统

然后移动焦点至 User account, 按下两次回车<br>

> [!Note]
> 用户名只能由小写字母，数字和下划线组成

输入一个你喜欢的用户名, 然后按下回车<br>
连续输入两次之前设置的根密码, 然后按下回车<br>

![[archinstall_user.png]]

然后移动焦点至 Confirm and exit, 按下回车, 返回第一页

### 3.6 外观配置

移动焦点至 Profile, 按下三次回车

![[archinstall_profile.png]]

然后移动焦点至 Kde, 按下回车

![[archinstall_profile_driver.png]]

移动焦点至 Graphics driver, 按下回车

![[archinstall_profile_driver_s.png]]

选择合适的显卡驱动

> [!Note]
> 如果你是在虚拟机中安装的 ArchLinux, 选择最后一项<br>
> 如果你使用的是 Nvidia RTX 20 系列或更高的显卡, 选择第四项<br>
> 如果你使用的是其他 Nvidia 显卡, 选择第六项<br>
> 其他显卡选择第一项(默认)即可<br>

移动焦点到某一项后, 按下回车<br>
然后将焦点移动至 Back, 按下回车, 回到第一页

### 3.7 音频

移动焦点至 Audio, 按下回车

![[archinstall_audio.png]]

移动焦点至 Pipewire, 按下回车, 回到第一页

### 3.8 网络

移动焦点至 Network configuration, 按下回车

![[archinstall_net.png]]

移动焦点至 use NetworkManager, 按下回车, 回到第一页

### 3.9 时区

移动焦点至 Timezone, 按下回车<br>
然后输入
```type="bash"
/Asia/Shanghai
```
按下回车, 回到第一页

## 4 开始安装

全部设置完成后, 移动焦点至 Install, 按下两次回车, 正式开始安装<br>
安装过程中, 不要断开网络连接, 也不要关闭电脑<br>
这时你可以坐和放宽(?, 启动原神或在屏幕前等待安装完成<br>
安装速度由设备性能和网络连接质量决定<br>

## 5 初来乍到

![[archinstall_f.png]]

看到此界面后, 按下回车<br>
此时 Archlinux 已经安装完毕, 需要一些后续配置<br>

### 5.1 Grub 引导设置
在终端输入
```type="bash"
nano /etc/default/grub
```
![[archlinux_post.png]]

通过键盘上下左右键移动光标, 定位到第六行, 以 GRUB_CMDLINE_LINUX_DEFAULT 开头, 并将内容改为
```type="bash"
GRUB_CMDLINE_LINUX_DEFAULT="loglevel=3"
```
如果你使用的是 Nvidia 显卡, 则需要改为
```type="bash"
GRUB_CMDLINE_LINUX_DEFAULT="loglevel=3 nvidia-drm.modeset=1"
```
用于确保 Wayland 可以使用<br>
随后, 按下键盘上的 Ctrl 和 O 键, 然后按下回车<br>
最后按下 Ctrl 和 X 键退出<br>

随后, 输入
```type="bash"
grub-mkconfig -o /boot/grub/grub.cfg && pacman -S noto-fonts-cjk --noconfirm 
```
等待命令完成

### 5.2 退出 Live 环境, 重新启动

输入 exit, 按下回车, 然后输入 reboot, 重启电脑, 这时拔下 U 盘

![[archlinux_login.png]]

输入密码

![[kde_base.png]]

出现如图中的 OOBE 后, 说明 ArchLinux 安装完成<br>
但是目前系统内还没有中文输入法, 如果需要进一步配置, 查看 [配置 ArchLinux](/2.永乐大典/如何配置-ArchLinux（未完成）)
