
chcp 65001
@echo off

@echo --------------------------------------------------------
@echo Get devices
adb devices > devices.txt
type devices.txt

@echo --------------------------------------------------------
@SET/p "apkPath=[拖放apk文件到窗口中]"
 
@echo start install apk ！

for /f  "skip=1 tokens=1 delims=	" %%i in (devices.txt) do (
@echo 正在安装 ：%%i
adb -s %%i install -r %apkPath%
@echo 安装完成 ：%%i
)

del devices.txt
@echo apk install success !
@echo --------------------------------------------------------
pause
