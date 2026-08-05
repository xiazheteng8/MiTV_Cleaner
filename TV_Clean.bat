@echo off
chcp 65001 >nul
title 小米电视一键精简助手 v1.0
color 0A

set launcher_pkg=


:START

cls

echo =====================================
echo        小米电视ADB精简助手
echo =====================================
echo.

set /p ip=请输入电视IP地址:


echo.
echo 正在连接 %ip%:5555


adb disconnect >nul

adb connect %ip%:5555


echo.
echo =====================================
echo 请查看电视屏幕
echo =====================================
echo.
echo 请使用遥控器点击：
echo.
echo      允许ADB调试
echo.
echo 如果有：
echo      始终允许此电脑
echo.
echo 请勾选
echo.

timeout /t 8



:CHECK_ADB


adb devices > adb_check.txt


findstr "%ip%" adb_check.txt | findstr "unauthorized" >nul


if not errorlevel 1 (

cls
echo.
echo =====================================
echo ADB未授权
echo =====================================
echo.
echo 请在电视点击允许ADB调试
echo.

pause

goto CHECK_ADB

)



findstr "%ip%" adb_check.txt | findstr "device" >nul


if errorlevel 1 (

cls

echo.
echo =====================================
echo 连接失败
echo =====================================
echo.
echo 请确认：
echo.
echo 1.电脑和电视同一网络
echo 2.ADB调试开启
echo.

del adb_check.txt

pause

goto START

)


del adb_check.txt


echo.
echo ADB连接成功！

timeout /t 2



:SELECT


cls

echo =====================================
echo        请选择电视桌面
echo =====================================
echo.
echo 1 ATV Launcher
echo 2 当贝桌面
echo 3 Emotn UI
echo 4 Projectivy Launcher
echo 5 不安装桌面
echo.


choice /c 12345 /n



if %errorlevel%==1 goto ATV
if %errorlevel%==2 goto DB
if %errorlevel%==3 goto EMOTN
if %errorlevel%==4 goto PROJECTIVY
if %errorlevel%==5 goto WARNING



:ATV

set launcher_pkg=ca.dstudio.atvlauncher.free

if not exist Launcher\ATV_Launcher.apk (

echo 找不到 ATV_Launcher.apk

pause

exit

)

adb install -r Launcher\ATV_Launcher.apk

goto SET_HOME



:DB

set launcher_pkg=com.dangbei.tvlauncher


if not exist Launcher\dbzm.apk (

echo 找不到 dbzm.apk

pause

exit

)


adb install -r Launcher\dbzm.apk

goto SET_HOME



:EMOTN

set launcher_pkg=com.oversea.aslauncher


if not exist Launcher\EmotnUI.apk (

echo 找不到 EmotnUI.apk

pause

exit

)


adb install -r Launcher\EmotnUI.apk

goto SET_HOME



:PROJECTIVY

set launcher_pkg=com.spocky.projengmenu


if not exist Launcher\ProjectivyLaunche.apk (

echo 找不到 ProjectivyLaunche.apk

pause

exit

)


adb install -r Launcher\ProjectivyLaunche.apk

goto SET_HOME

:SET_HOME

cls

echo =====================================
echo       设置默认桌面
echo =====================================
echo.


echo 当前桌面包名：
echo %launcher_pkg%


echo.

echo 正在设置HOME桌面...


adb shell cmd package set-home-activity %launcher_pkg%



echo.

echo 当前HOME状态：

adb shell cmd package resolve-activity --brief android.intent.action.MAIN android.intent.category.HOME



echo.

echo 启动新桌面测试...


adb shell monkey -p %launcher_pkg% 1


timeout /t 5 >nul



echo.

echo 检查桌面是否安装成功...


adb shell pm list packages | find "%launcher_pkg%" >nul



if errorlevel 1 (

echo.

echo =====================================
echo 桌面安装失败！
echo =====================================

pause

exit

)



echo.

echo =====================================
echo 桌面安装成功！
echo =====================================

pause



goto CLEAN





:WARNING


cls

echo =====================================
echo               警告！
echo =====================================
echo.

echo 未安装第三方桌面可能导致：

echo.
echo 1. 开机卡MI
echo 2. Home键无法使用
echo 3. 删除系统桌面后无法进入桌面
echo.

echo.

echo 1 我已知晓，继续

echo 2 返回选择桌面

echo.


choice /c 12 /n


if %errorlevel%==1 goto CLEAN

if %errorlevel%==2 goto SELECT





:CLEAN


cls


echo =====================================
echo.
echo      开始精简小米电视系统
echo.
echo =====================================

echo.



for %%a in (

com.jiajia.yundonghui.mitv
com.xiaomi.dlnatvservice
com.xiaomi.mitv.assistant.manual
com.xiaomi.milink.udt
com.mi.umifrontend
com.mi.umi
com.xiaomi.gamecenter.sdk.service.mibo
com.xiaomi.mitv.advertis
com.mitv.service
com.xiaomi.mitv.service
com.ktcp.tvvideo
com.pptv.tvsports.preinstall
com.duokan.videodaily
com.pplive.atv
com.xiaomi.mitv.advertise
com.mitv.codec.update
com.ixigua.android.tv.wasu
com.ixigua.android.tv.bestv
com.nhhz.app
com.qq.cleaning
com.sohuott.tv.vod.xiaomi
com.mitv.care
com.mitv.shoplugin
com.xm.webcontent
com.xiaomi.tv.gallery
com.xiaomi.tweather
com.xiaomi.mitv.upgrade
com.xiaomi.account
com.xiaomi.mitv.payment
com.xiaomi.upnp
com.xiaomi.mitv.pay
com.xiaomi.tv.appupgrade
com.xiaomi.mitv.remotecontroller.service
com.xiaomi.mitv.tvpush.tvpushservice
com.xiaomi.account.auth
com.xiaomi.statistic
com.mipay.wallet.tv
com.xiaomi.mitv.handbook
com.xiaomi.smarthome.tv
com.mi.miplay.mitvupnpsink
com.miui.tv.analytics
com.xiaomi.gamecenter.sdk.service.mibox
com.xiaomi.mibox.gamecenter
com.xiaomi.mitv.karaoke.service
com.xiaomi.mitv.calendar
com.xiaomi.miplay
com.xiaomi.mitv.appstore

) do (

echo.
echo 正在删除：
echo %%a

adb shell pm uninstall --user 0 %%a

)



echo.

echo =====================================
echo 删除小米系统桌面
echo =====================================


adb shell pm uninstall --user 0 com.mitv.tvhome

adb shell pm uninstall --user 0 com.xiaomi.mitv.tvhome



echo.

echo =====================================
echo 系统精简完成！
echo =====================================


pause



:YOUTUBE


cls


echo =====================================
echo.
echo        是否安装 YouTube
echo.
echo =====================================

echo.

echo 1 安装 YouTube

echo 2 跳过


choice /c 12 /n



if %errorlevel%==1 goto INSTALL_YT

if %errorlevel%==2 goto FINISH




:INSTALL_YT


if not exist youtube.apk (

echo.

echo 未找到 youtube.apk

pause

goto FINISH

)



echo.

echo 正在安装 YouTube...


adb install -r youtube.apk



echo.

echo YouTube安装完成！


pause



goto FINISH





:FINISH


cls


echo =====================================
echo.
echo             恭喜你！
echo.
echo       小米电视优化完成
echo.
echo =====================================


echo.

echo 10秒后重启电视...


timeout /t 10


adb reboot