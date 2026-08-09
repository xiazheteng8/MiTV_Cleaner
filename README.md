# 📺 Android TV Clean Tool

## 安卓电视 ADB 一键精简工具 v2.0

> by **瞎折腾吧**
>
> YouTube：@xiazheteng8


<p align="center">

一键连接 Android TV  
智能检测系统  
安装第三方桌面  
精简预装应用  
恢复出厂设置

</p>


---

# ✨ 项目简介

Android TV Clean Tool 是一套基于 ADB 的安卓电视优化工具。

通过 Windows BAT 脚本，实现：

- 📡 ADB 网络连接
- 🔍 电视信息检测
- 🧹 系统应用精简
- 🏠 第三方桌面安装
- 📦 常用软件部署
- ♻️ 恢复出厂辅助


适用于：

- 安卓智能电视
- 安卓电视盒子
- 部分 AOSP Android TV 设备


---

# 📁 工具组成


```
Android TV Clean Tool

│
├── TV_Clean.bat
│   └── 安卓电视一键精简

│
├── TV_Scan.bat
│   └── 查询电视信息及软件包

│
├── TV_Reset.bat
│   └── 恢复出厂设置辅助

│
├── adb.exe
│
├── Launcher
│   ├── ATV Launcher
│   ├── 当贝桌面
│   ├── Emotn UI
│   └── Projectivy Launcher
│
├── brands
│   ├── Xiaomi.txt
│   ├── TCL.txt
│   ├── Hisense.txt
│   ├── Skyworth.txt
│   ├── Konka.txt
│   └── Haier.txt
│
├── Apps
│   ├── youtube.apk
│   ├── ysc.apk
│   │   └── 影视仓
│   │
│   └── my-tv-0.apk
│       └── My_TV〇
│
└── README.md

```


---

# 🚀 功能介绍


## TV_Clean

### 安卓电视一键精简

功能：

✅ ADB连接

✅ 自动识别品牌

✅ 安装第三方桌面

✅ 设置默认HOME桌面

✅ 自动调用品牌精简列表

✅ 删除广告及预装应用

✅ 安装常用软件


支持软件：

| 软件 | 文件 |
|-|-|
| YouTube | youtube.apk |
| 影视仓 | ysc.apk |
| My_TV〇 | my-tv-0.apk |


---

## TV_Scan

### 安卓电视信息检测工具


用于生成设备信息：

包含：

```
品牌

型号

Android版本

CPU架构

已安装软件包
```


输出：

```
AndroidTV_Info.txt
```


用途：

- 制作精简列表
- 排查软件包
- 判断兼容性


---

## TV_Reset

### 安卓电视恢复出厂辅助


由于不同电视厂商限制：

ADB恢复命令并不完全通用。


本工具：

1. 尝试ADB恢复

2. 失败后进入Recovery

3. 用户通过遥控器完成双清


Recovery操作：

```
Wipe data / Factory reset

↓

Yes

↓

Reboot system now

```


---

# 🖥️ 兼容说明


## 已测试设备

目前完整测试：

```
Xiaomi MiTV 系列
```


测试内容：

✔ ADB连接

✔ 桌面安装

✔ HOME切换

✔ 软件精简

✔ 应用安装


---

## 其他品牌


支持检测：

```
TCL

Hisense

Skyworth

Konka

Haier
```


对应精简列表：

来自：

- 网络公开资料
- 用户分享
- 社区整理


由于电视型号差异：

同品牌不同型号可能存在：

- 包名不同
- 系统组件不同
- 删除风险不同


建议：

首次使用：

运行：

```
TV_Scan.bat
```

确认软件包后再精简。


---

# ⚙️ 系统版本建议


## 推荐

⭐⭐⭐⭐⭐

```
Android 6.0+
```


优势：

- 软件兼容性更好
- 第三方桌面支持更完善
- ADB功能稳定


---

## Android 4.x


老设备可能出现：

```
APK无法安装

桌面无法启动

HOME无法切换

部分ADB命令不可用
```


原因：

- 系统API过低
- CPU架构限制
- 厂商深度定制


建议：

Android 4.x：

✔ 可以尝试精简

✘ 不建议安装新版软件

✘ 不建议超级精简


---

# 📌 使用流程


```
TV_Scan
    ↓
查看软件包
    ↓
备份记录
    ↓
TV_Clean
    ↓
普通精简测试
    ↓
超级精简
```


---

# ⚠️ 免责声明


本工具仅用于：

Android TV 学习、研究及系统优化。


由于：

- 不同品牌系统差异
- 不同型号硬件差异
- 厂商定制系统差异


使用本工具可能导致：

- 软件异常
- 功能缺失
- 桌面无法启动
- 系统无法正常运行


除 Xiaomi 小米电视外：

其他品牌精简列表均来源于互联网整理。

作者无法保证：

- 所有型号适用
- 所有删除项目安全


使用前请：

✔ 备份原始软件列表

✔ 确认可以进入Recovery

✔ 首次使用选择普通精简


因使用本工具造成的任何问题：

由使用者自行承担。


---

# 📮 关于作者


**瞎折腾吧**


YouTube:

@xiazheteng8
