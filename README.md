<div align="center">

![GitHub stars](https://img.shields.io/github/stars/xiazheteng8/MiTV_Cleaner)
![GitHub license](https://img.shields.io/github/license/xiazheteng8/MiTV_Cleaner)

</div>
<div align="center">

# AndroidTV Cleaner<img width="256" height="256" alt="Gemini_Generated_Image_3n6vn83n6vn83n6v 拷贝" src="https://github.com/user-attachments/assets/25c56187-bf51-42a1-90ff-67a1d277af45" />


<div align="center">

# AndroidTV Cleaner

### 安卓电视 ADB 自动化优化工具

<a href="https://youtu.be/dgmyJgCuBaQ">
<img src="./preview.jpg" width="850">
</a>

<p>
通过 ADB 管理安卓电视应用，实现应用扫描、自定义优化、第三方桌面安装以及 APK 批量部署。
</p>

</div>


## 📺 项目介绍

AndroidTV Cleaner 是一款基于 Android ADB 调试功能开发的电视优化工具。

通过连接电视 ADB 接口，可以自动扫描电视中的应用信息，并生成对应配置文件。

相比传统固定卸载列表，本项目采用：

- 自动扫描
- 应用解析
- 自定义配置
- 分级优化

让不同品牌安卓电视可以根据自身情况进行个性化调整。


## ✨ 功能特点


### 🔍 自动扫描应用

连接电视后，可以获取：

- 应用名称
- Package Name
- APK安装路径

生成完整扫描结果。


### 🧩 自定义优化列表

根据扫描结果，可以创建自己的配置：

- 普通优化列表
- 深度优化列表
- 桌面优化列表
- 保护组件列表


用户可以自由选择：

- 保留功能
- 调整应用
- 创建专属电视方案


### 🛡️ 分级优化

#### 普通优化

适合大多数用户。

处理：

- 无需使用的预装应用
- 厂商附加服务


#### 深度优化

适合高级用户。

可能影响：

- 部分厂商功能
- 系统附加服务


#### 桌面优化

用于替换默认桌面。

建议提前安装第三方 Launcher。


## 🖥️ 第三方桌面支持

支持：

- 当贝桌面
- ATV Launcher
- Emotn UI
- Projectivy Launcher


## 📦 批量安装 APK

将 APK 文件放入：

APPS

工具会自动识别并安装。


适用于：

- 恢复电视环境
- 快速部署软件
- 初始化设备


# 🚀 使用方法


## 1. 开启ADB调试

进入电视：

设置
→ 关于本机
→ 系统版本/产品型号

连续点击确认键开启开发者模式。


开启：

ADB调试
未知来源应用安装


## 2. 获取电视IP

进入：

网络设置
→ 网络详情

记录 IPv4 地址。


## 3. 运行工具

打开：

TV助手.bat

输入电视IP。

首次连接时，电视会弹出授权提示。

选择：

允许


# 📂 项目结构

AndroidTV_Cleaner
├── TV助手.bat
│
├── APPS
│   └── APK文件
│
├── Config
│   ├── normal.txt
│   ├── deep.txt
│   ├── launcher.txt
│   └── protect.txt
│
├── Result
│   └── scan_result.txt
│
└── README.md


# 📺 支持设备

理论支持：

- 小米电视
- 海信电视
- TCL电视
- 创维电视
- 康佳电视
- 长虹电视
- 安卓电视盒子
- 其他 Android TV 设备


要求：

- Android系统
- 支持ADB调试
- 允许应用管理


# ⚠️ 注意事项

使用前：

1. 保存扫描结果
2. 确认应用用途
3. 不要处理系统核心组件


本工具不会修改系统分区。

如遇异常，可以通过系统恢复功能恢复设备。


# 📌 最终版本说明

AndroidTV Cleaner v2.0 为当前功能规划下的最终版本。


由于不同品牌电视存在：

- 系统版本差异
- 软件包差异
- 厂商服务差异


个人无法长期维护所有品牌配置。


后续希望由社区共同维护品牌配置文件。


欢迎提交：

电视品牌：
电视型号：
系统版本：
扫描结果：
测试情况：
推荐配置：


# 🤝 参与贡献

如果你的电视测试成功：

欢迎提交：

- 扫描结果
- 精简配置
- 使用反馈


帮助完善更多设备支持。


# 📥 下载

进入：

Releases

下载最新版本。


# ⭐ Support

如果项目帮助到了你，欢迎 Star ⭐ 支持。
