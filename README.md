
<div align="center">

![GitHub stars](https://img.shields.io/github/stars/xiazheteng8/MiTV_Cleaner)
![GitHub license](https://img.shields.io/github/license/xiazheteng8/MiTV_Cleaner)

</div>
<div align="center">

# AndroidTV Cleaner

### Universal Android TV Optimization Tool

<img width="256" height="256" alt="Gemini_Generated_Image_3n6vn83n6vn83n6v 拷贝" src="https://github.com/user-attachments/assets/772d3c31-2b19-40c4-affa-ef1d9daee086" />基于 ADB 的安卓电视应用管理与系统优化工具


<div align="center">

# AndroidTV Cleaner

安卓电视 ADB 优化工具

## 🎬 视频演示

<div align="center">

点击下方图片观看完整演示视频：

<a href="https://youtu.be/F5YhsMLjae8">

<img src="https://raw.githubusercontent.com/xiazheteng8/MiTV_Cleaner/main/Video%20Thumbnail.png" width="800">

</a>

</div>

<p>
支持应用扫描、自定义配置、分级优化、第三方桌面安装以及 APK 批量部署
</p>

</div>


---

## 📺 项目介绍

AndroidTV Cleaner 是一款基于 Android ADB 调试功能开发的电视优化工具。

通过连接电视设备，自动分析当前应用环境，并生成对应配置文件。

相比传统固定列表方式，新版本采用：

- 自动扫描
- 应用解析
- 自定义配置
- 分级处理

让不同品牌、不同系统版本的安卓电视都可以拥有属于自己的优化方案。


---

# ✨ 功能介绍


## 🔍 深度扫描应用列表

自动获取电视应用信息：

- 应用名称
- Package Name
- APK 路径


生成完整扫描结果，方便用户分析设备环境。


---

## 🧩 生成精简列表配置

根据扫描结果创建专属配置：

- 普通优化列表
- 深度优化列表
- 桌面优化列表
- 保护组件列表


用户可以自由决定：

- 保留哪些功能
- 调整哪些应用
- 创建个人电视方案


---

## 🛡 Multi-Level Optimization


| 模式 | 适合用户 | 说明 |
| --- | --- | --- |
| 普通优化 | 普通用户 | 日常系统整理 |
| 深度优化 | 高级用户 | 更多应用调整 |
| 桌面优化 | 个性用户 | 替换默认桌面 |


---

## 🖥 桌面替换

支持安装：

- 当贝桌面
- ATV Launcher
- Emotn UI
- Projectivy Launcher


打造更加简洁的电视首页。


---

## 📦 软件安装

将 APK 文件放入：

APPS

工具会自动识别并批量安装。


适用于：

- 新电视初始化
- 恢复环境
- 快速部署软件


---

# 🚀 使用流程


连接电视
↓
扫描应用
↓
生成配置
↓
自定义列表
↓
执行优化
↓
安装应用


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


设备要求：

- Android 系统
- 支持 ADB 调试
- 允许应用管理


---

# 📂 文件架构



- TV助手.exe
- adb.exe
- APPS
  - app.apk
- brands
  - normal.txt
  - deep.txt
  - launcher.txt
  - protect.txt
- scan
  - 扫描结果.txt
- Config.ini
- Launcher
  -Launcher.apk
- tool
  -工具
- README.md


---

# 🏁 使用条件


## 1. 开启 ADB 调试


电视设置：

设置
→ 关于本机
→ 系统版本


连续点击确认键开启开发者模式。


开启：

- ADB 调试
- 未知来源应用安装


---

## 2. 连接电视


查看电视 IP：

网络设置
→ 网络详情


输入 IP 地址即可连接。


---

# 🤝 维护说明


不同品牌电视存在：

- 系统版本差异
- 软件包差异
- 厂商服务差异


个人无法长期维护全部品牌配置。


因此希望社区共同完善：


Brand
 └── Model
  ├── Scan Result

  └── Optimization Profile


欢迎提交：

- 电视型号
- 扫描结果
- 测试情况
- 配置文件


帮助更多设备加入支持列表。


---

# 📌 版本发布声明


AndroidTV Cleaner v2.0


当前版本为功能规划下的最终版本。


后续重点：

- 完善品牌配置
- 增加设备支持
- 收集用户反馈


而不是继续增加核心功能。


---

# ⚠️ 危险提示


使用前请：

- 保存扫描结果
- 了解应用作用
- 谨慎调整系统组件


本工具不会修改系统分区。


---

# ⭐ 感谢支持


如果项目帮助到了你：

欢迎 Star ⭐ 支持。
