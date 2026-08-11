<div align="center">

![GitHub stars](https://img.shields.io/github/stars/xiazheteng8/MiTV_Cleaner)
![GitHub license](https://img.shields.io/github/license/xiazheteng8/MiTV_Cleaner)

</div>
<div align="center">

# AndroidTV Cleaner<img width="256" height="256" alt="Gemini_Generated_Image_3n6vn83n6vn83n6v 拷贝" src="https://github.com/user-attachments/assets/25c56187-bf51-42a1-90ff-67a1d277af45" />



<div align="center">

<div align="center">

# AndroidTV Cleaner

### 安卓电视 ADB 自动化优化工具

<p>
  <a href="https://youtu.be/dgmyJgCuBaQ">
    <img src="./preview.jpg" width="850">
  </a>
</p>

<p>
通过 ADB 管理电视应用，实现应用扫描、自定义优化、第三方桌面安装以及 APK 批量部署。
</p>

</div>


---

## 📺 项目介绍

AndroidTV Cleaner 是一款基于 Android ADB 调试功能开发的电视优化工具。

它可以帮助用户管理安卓电视中的应用环境，通过自动扫描电视应用信息，生成对应的配置文件，让用户根据自己的需求进行个性化调整。

相比传统固定列表方式，本项目采用：

- 自动扫描
- 应用解析
- 自定义配置
- 分级处理

让不同品牌、不同系统版本的安卓电视拥有更加灵活的管理方式。


---

## ✨ 功能特点

### 🔍 自动扫描应用

连接电视后，工具可以获取：

- 应用名称
- Package Name
- APK路径
- 应用信息


生成完整扫描结果，方便用户了解当前电视的软件环境。


---

### 🧩 自定义优化列表

根据扫描结果，可以创建属于自己的配置：

支持：

- 普通优化列表
- 深度优化列表
- 桌面优化列表
- 保护组件列表


用户可以自由决定：

- 保留哪些功能
- 调整哪些应用
- 创建个人电视方案


---

### 🛡️ 分级处理机制

为了降低误操作风险，工具采用分级方式：

## 普通优化

适合日常使用。

主要针对：

- 无需使用的预装应用
- 厂商附加服务


## 深度优化

适合高级用户。

可能影响：

- 部分厂商功能
- 系统附加服务


## 桌面优化

用于替换默认桌面。

建议提前安装第三方 Launcher。


---

## 🖥️ 第三方桌面支持

支持安装：

- 当贝桌面
- ATV Launcher
- Emotn UI
- Projectivy Launcher


帮助打造更加简洁的电视首页。


---

## 📦 批量安装 APK

将 APK 文件放入：

APPS

文件夹。

工具会自动识别并安装应用。

适用于：

- 系统初始化
- 恢复电视环境
- 快速部署常用软件


---

# 🚀 使用方法


## 1. 开启开发者选项

进入电视设置：

设置
 ↓
关于本机
 ↓
系统版本 / 产品型号

连续点击确认键开启开发者模式。


开启：

ADB调试
未知来源应用安装


---

## 2. 获取电视IP地址


进入：

网络设置
 ↓
网络详情

记录 IPv4 地址。


例如：

192.168.1.100


---

## 3. 运行工具


打开：

TV助手

输入电视IP。


第一次连接时：

电视会出现授权提示。

选择：

允许

即可。


---

# 📂 项目结构

AndroidTV Cleaner
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


---

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

✅ Android系统  
✅ 支持ADB调试  
✅ 允许应用管理操作  


不同品牌系统差异较大，实际效果需要根据设备测试。


---

# ⚠️ 注意事项


使用前建议：

1. 保存扫描结果文件
2. 了解应用功能后再进行调整
3. 不要随意处理系统核心组件


如果出现异常：

可以尝试：

- 系统恢复
- Recovery恢复出厂设置


本工具不会修改系统分区。


---

# 📌 最终版本说明


AndroidTV Cleaner v2.0 是当前版本规划下的最终功能版本。


由于不同电视品牌之间存在：

- 系统版本差异
- 厂商服务差异
- 应用包名差异


个人无法长期维护所有品牌配置。


因此后续希望由社区共同完善：

## 品牌配置文件


欢迎提交：

电视品牌：
电视型号：
系统版本：
扫描结果：
测试情况：
推荐配置：


优秀配置会合并到项目中，帮助更多用户快速使用。


---

# 🤝 参与贡献


如果你的电视成功测试：

欢迎提交：

- 扫描结果
- 配置文件
- 使用反馈


一起完善更多设备支持。


---

# 📥 下载


进入：

Releases

下载最新版本。


---

# ⭐ Support

如果这个项目帮助到了你：

欢迎 Star ⭐ 支持。


---

# License

MIT License
