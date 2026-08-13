@echo off

chcp 936 >nul

setlocal EnableDelayedExpansion


title 瞎折腾吧 - 软件安装工具 v2.0

color 0A



:: =====================================
:: 自动定位根目录
:: =====================================


set CURRENT=%~dp0


if exist "%CURRENT%apps" (

    set ROOT=%CURRENT%

) else (

    if exist "%CURRENT%..\apps" (

        set ROOT=%CURRENT%..

    ) else (

        echo.
        echo 未找到根目录
        pause
        exit /b

    )

)



set APP_DIR=%ROOT%\apps

set CONFIG=%ROOT%\config.ini

set ADB=%ROOT%\adb.exe

set AAPT=%ROOT%\tools\aapt.exe

set ICONV=%ROOT%\tools\iconv.exe




:: =====================================
:: 检查文件
:: =====================================


if not exist "%ADB%" (

    echo.

    echo 未找到 adb.exe

    echo %ADB%

    pause

    exit /b

)



if not exist "%AAPT%" (

    echo.

    echo 未找到 aapt.exe

    pause

    exit /b

)



if not exist "%ICONV%" (

    echo.

    echo 未找到 iconv.exe

    pause

    exit /b

)



if not exist "%CONFIG%" (

    echo.

    echo 未找到 config.ini

    pause

    exit /b

)




:: =====================================
:: 读取IP
:: =====================================


for /f "tokens=2 delims==" %%a in ('type "%CONFIG%"') do (

    set IP=%%a

)




:: =====================================
:: 连接电视
:: =====================================


cls


echo =====================================
echo.
echo        瞎折腾吧
echo.
echo        软件安装工具 v2.0
echo.
echo =====================================


echo.

echo 当前电视：

echo %IP%


echo.

echo 正在连接电视...



"%ADB%" connect %IP%:5555



echo.

echo 等待ADB授权...

timeout /t 5 >nul



"%ADB%" devices



echo.



"%ADB%" devices | findstr "%IP%" | findstr "device" >nul



if errorlevel 1 (

    echo.

    echo ADB连接失败

    echo.

    echo 如果电视弹出授权，请点击允许

    pause

    exit /b

)



echo.

echo ADB连接成功



pause


goto SCAN






:: =====================================
:: 扫描APK
:: =====================================


:SCAN


cls


echo =====================================
echo.
echo          软件安装列表
echo.
echo =====================================


echo.



set COUNT=0



for %%i in ("%APP_DIR%\*.apk") do (

if exist "%%i" (

    set /a COUNT+=1


    set APK!COUNT!=%%~fi


    set NAME!COUNT!=未知应用

    set PACKAGE!COUNT!=未知包名

    set VERSION!COUNT!=未知版本




    "%AAPT%" dump badging "%%~fi" > "%TEMP%\apk_utf8.txt" 2>nul



    "%ICONV%" -f UTF-8 -t GBK "%TEMP%\apk_utf8.txt" > "%TEMP%\apk.txt" 2>nul





    for /f "tokens=2 delims='" %%a in ('findstr "application-label:" "%TEMP%\apk.txt"') do (

        set NAME!COUNT!=%%a

    )




    for /f "tokens=2 delims='" %%a in ('findstr "package:" "%TEMP%\apk.txt"') do (

        set PACKAGE!COUNT!=%%a

    )




    for /f "tokens=6 delims='" %%a in ('findstr "package:" "%TEMP%\apk.txt"') do (

    set VERSION!COUNT!=%%a

)



)

)



del "%TEMP%\apk_utf8.txt" >nul 2>&1

del "%TEMP%\apk.txt" >nul 2>&1




if %COUNT%==0 (

    echo.

    echo apps没有APK

    pause

    exit /b

)



echo 发现应用：

echo.



for /l %%i in (1,1,%COUNT%) do (

    echo %%i. !NAME%%i!

    echo    包名：!PACKAGE%%i!

    echo    版本：!VERSION%%i!

    echo.

)



set /a ALL=%COUNT%+1


echo %ALL%. 安装全部

echo.

echo 0. 返回


echo.


set /p CHOICE=请选择：



if "%CHOICE%"=="0" exit /b


if "%CHOICE%"=="%ALL%" goto INSTALL_ALL


if defined APK%CHOICE% goto INSTALL_ONE


goto SCAN





:: =====================================
:: 单个安装
:: =====================================


:INSTALL_ONE


cls


echo.

echo 正在安装：

echo !NAME%CHOICE%!


echo.

echo 包名：

echo !PACKAGE%CHOICE%!


echo.

echo 版本：

echo !VERSION%CHOICE%!


echo.


"%ADB%" install -r "!APK%CHOICE%!"



echo.

echo 安装完成


pause


goto SCAN





:: =====================================
:: 全部安装
:: =====================================


:INSTALL_ALL


cls


echo =====================================
echo.
echo       开始安装全部软件
echo.
echo =====================================



for /l %%i in (1,1,%COUNT%) do (


echo.

echo -------------------------------------

echo 软件：

echo !NAME%%i!


echo 包名：

echo !PACKAGE%%i!


echo 版本：

echo !VERSION%%i!


echo -------------------------------------


"%ADB%" install -r "!APK%%i!"



)



echo.

echo =====================================

echo 全部安装完成

echo =====================================


pause


goto SCAN