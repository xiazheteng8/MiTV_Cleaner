@echo off

cd /d "%~dp0.."

chcp 936 >nul

setlocal EnableDelayedExpansion


title 瞎折腾吧 - 安卓电视恢复出厂助手 v2.0


color 0A



:: =====================================
:: 读取配置
:: =====================================


if not exist config.ini (

echo.

echo 未找到 config.ini

echo 请先运行主程序保存电视IP

pause

exit /b

)



for /f "tokens=2 delims==" %%a in (config.ini) do (

set IP=%%a

)




:: =====================================
:: 标题
:: =====================================


:START


cls


echo =====================================

echo.

echo       瞎折腾吧

echo.

echo    安卓电视恢复出厂助手 v2.0

echo.

echo =====================================


echo.

echo 当前电视IP：

echo %IP%


echo.



:: =====================================
:: ADB连接
:: =====================================


echo 正在连接电视...



adb connect %IP%:5555 >nul



timeout /t 3 >nul



adb devices >adb_check.txt



findstr "%IP%" adb_check.txt | findstr "unauthorized" >nul



if not errorlevel 1 (


cls


echo =====================================

echo.

echo ADB未授权

echo.

echo =====================================


echo.

echo 请在电视点击：

echo.

echo 允许ADB调试

echo.

echo 勾选：

echo 始终允许此电脑


pause


goto START


)




findstr "%IP%" adb_check.txt | findstr "device" >nul



if errorlevel 1 (


cls


echo =====================================

echo.

echo ADB连接失败

echo.

echo =====================================


echo.

echo 请检查：

echo.

echo 1.电视和电脑是否同一网络

echo.

echo 2.ADB调试是否开启

echo.

echo 3.IP地址是否正确



pause


goto START


)



del adb_check.txt >nul 2>&1



echo.

echo =====================================

echo.

echo ADB连接成功

echo.

echo =====================================



timeout /t 2 >nul





:: =====================================
:: 获取设备信息
:: =====================================


set MODEL=

set BRAND=



for /f "delims=" %%a in ('adb shell getprop ro.product.model') do (

set MODEL=%%a

)



for /f "delims=" %%a in ('adb shell getprop ro.product.brand') do (

set BRAND=%%a

)



cls



echo =====================================

echo.

echo       当前设备信息

echo.

echo =====================================


echo.

echo 品牌：

echo %BRAND%


echo.

echo 型号：

echo %MODEL%



echo.



:: =====================================
:: 提示
:: =====================================


echo =====================================

echo.

echo 注意：

echo.

echo 即将进入 Recovery 模式

echo.

echo 请使用遥控器操作：

echo.

echo 1. 选择：

echo    Wipe data/factory reset

echo.

echo 2. 选择：

echo    Yes

echo.

echo 3. 选择：

echo    Reboot system now

echo.

echo =====================================



echo.



choice /c 12 /n /m "确认进入Recovery？ 1继续 2返回："



if errorlevel 2 goto EXIT




echo.

echo 正在进入 Recovery...



timeout /t 3 >nul



adb reboot recovery



echo.

echo =====================================

echo.

echo 命令已发送

echo.

echo 请等待电视进入Recovery界面

echo.

echo =====================================



pause


goto EXIT







:EXIT


exit /b