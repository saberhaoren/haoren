# 配置 ArchLinux
上一章：[安装 ArchLinux](/2.永乐大典/如何安装-ArchLinux)
## 0 系统总览
![[kde_size.png]]
整个系统安装完后占用 6.1 GB, 小于 Windows<br>
系统界面符合 Windows 的操作逻辑, 基本可以快速上手
## 1 输入法
打开 「开始菜单」, 选择系统, 打开 Konsole 终端<br>
此时会打开一个黑色窗口<br>
在窗口内输入
```type="bash"
sudo pacman -S fcitx5-im fcitx5-chinese-addons --noconfirm && reboot
```
按下回车, 输入密码, 等待自动重启<br>

重新进入 ArchLinux 后, 再次打开 Konsole 终端, 并输入
```type="bash"
sudo nano /etc/profile
```
输入密码后, 输入如下内容
```type="bash"
QT_IM_MODULE=fcitx5
GTK_IM_MODULE=fcitx5
XMODIFIERS=@im=fcitx5
```
保存文件, 然后注销, 再次进入桌面<br>
输入法安装完成

## 2 常用软件
> [!Note]
> 前面的区域, 以后再来探索吧？