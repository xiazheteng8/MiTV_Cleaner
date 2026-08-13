@echo off

cd /d "%~dp0.."

setlocal EnableDelayedExpansion


chcp 936 >nul


title 瞎折腾吧 - 安卓电视桌面安装工具 v2.0


color 0A



if not exist Launcher mkdir Launcher




:: =====================================
:: 读取IP
:: =====================================


if not exist config.ini (

echo.

echo 未找到 config.ini

echo.

echo 请先运行主程序

pause

exit /b

)



for /f "tokens=2 delims==" %%a in (config.ini) do (

set IP=%%a

)






:: =====================================
:: ADB连接
:: =====================================


cls


echo =====================================
echo.
echo        瞎折腾吧
echo.
echo      桌面安装工具 v2.0
echo.
echo =====================================


echo.

echo 当前电视：

echo %IP%


echo.


echo 正在连接电视...



adb connect %IP%:5555 >nul


timeout /t 3 >nul



adb devices >adb_check.txt



findstr "%IP%" adb_check.txt | findstr "device" >nul



if errorlevel 1 (

echo.

echo ADB连接失败

pause

exit /b

)



del adb_check.txt >nul 2>&1




:: =====================================
:: 选择桌面
:: =====================================


:MENU


cls


echo =====================================
echo.
echo          请选择桌面
echo.
echo =====================================


echo.


echo 1. ATV Launcher

echo.

echo 2. 当贝桌面

echo.

echo 3. Emotn UI

echo.

echo 4. Projectivy Launcher

echo.

echo 5. 不安装桌面



echo.


choice /c 12345 /n /m "请选择："



if errorlevel 5 goto NO_LAUNCHER

if errorlevel 4 goto PROJECTIVY

if errorlevel 3 goto EMOTN

if errorlevel 2 goto DB

if errorlevel 1 goto ATV






:: =====================================
:: ATV
:: =====================================


:ATV


set LAUNCHER_PKG=ca.dstudio.atvlauncher.free


set APK=Launcher\ATV_Launcher.apk


goto INSTALL






:: =====================================
:: 当贝
:: =====================================


:DB


set LAUNCHER_PKG=com.dangbei.tvlauncher


set APK=Launcher\dbzm.apk


goto INSTALL






:: =====================================
:: Emotn
:: =====================================


:EMOTN


set LAUNCHER_PKG=com.oversea.aslauncher


set APK=Launcher\EmotnUI.apk


goto INSTALL






:: =====================================
:: Projectivy
:: =====================================


:PROJECTIVY


set LAUNCHER_PKG=com.spocky.projengmenu


set APK=Launcher\ProjectivyLaunche.apk


goto INSTALL








:: =====================================
:: 不安装
:: =====================================


:NO_LAUNCHER


echo.

echo =====================================

echo.

echo 警告：

echo.

echo 不安装第三方桌面

echo 精简系统桌面后可能无法进入系统

echo.

echo =====================================


choice /c 12 /n /m "是否继续？ 1继续 2返回"



if errorlevel 2 goto MENU



goto EXIT








:: =====================================
:: 安装
:: =====================================


:INSTALL



cls


echo =====================================
echo.

echo 正在安装：

echo %APK%

echo.

echo =====================================



if not exist "%APK%" (

echo.

echo 找不到安装文件：

echo %APK%

pause

goto MENU

)




adb install -r "%APK%"



if errorlevel 1 (

echo.

echo 安装失败

pause

goto MENU

)



echo.

echo 安装完成！




:: =====================================
:: 设置默认桌面
:: =====================================


echo.

echo 正在设置默认桌面...


adb shell cmd package set-home-activity %LAUNCHER_PKG%



echo.


echo 当前HOME：


adb shell cmd package resolve-activity --brief android.intent.action.MAIN android.intent.category.HOME




echo.


echo 测试启动桌面...


adb shell monkey -p %LAUNCHER_PKG% 1



timeout /t 5 >nul




echo.

echo 桌面设置完成！


pause


goto EXIT







:: =====================================
:: 返回
:: =====================================


:EXIT


exit /b