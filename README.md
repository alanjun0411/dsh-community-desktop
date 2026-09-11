# DSH Community Desktop

Unofficial community Windows desktop build of DeepSeek Harness. Not affiliated with, endorsed by, or an official download of DeepSeek.

**非官方社区构建。不代表 DeepSeek，未获官方授权，也不是官方下载渠道。**

这是基于 [DeepSeek Harness](https://github.com/deepseek-ai/deepseek-harness) 的 Windows 桌面版，把官方桌面端、Node.js 和 pnpm 打进安装包。目标电脑不用单独装开发环境，安装或解压后即可打开。

当前打包版本：**0.1.5-rc.1**（与上游 dsh 版本绑定）。

## 下载

到 [Releases](https://github.com/alanjun0411/dsh-community-desktop/releases/latest) 下载：

| 文件 | 用途 |
| --- | --- |
| `dsh-community-desktop-*-win-x64.exe` | 安装版。双击安装，可改安装目录，开始菜单会出现 **DSH Community Desktop**。 |
| `dsh-community-desktop-*-win-x64.zip` | 免安装。解压后双击 `DSH Community Desktop.exe`。 |

只要 Windows 10/11 **64 位**。没有 macOS / Linux 包。

## 安装与打开

1. 下载 exe 或 zip。这是未签名文件，Windows 可能弹出 SmartScreen 或「未知发布者」。选 **更多信息 → 仍要运行**。
2. 安装版按向导完成即可；免安装版解压到任意目录（不要放在需要管理员权限才能写的位置）。
3. 第一次启动会把内置运行时解到用户目录，可能要一两分钟，之后会快一些。
4. 打开后在设置里填写 **DeepSeek API Key**（环境变量 `DEEPSEEK_API_KEY` 也可以）。安装包里不含密钥，模型请求需要联网。

官方说明：DeepSeek Harness 仍是实验性开发预览，能执行模型生成的命令、读写你允许的文件。请用最小权限运行，重要文件先备份。详见上游 [SAFETY.md](https://github.com/deepseek-ai/deepseek-harness/blob/master/SAFETY.md)。

## 日常使用

- 这是官方 Web 界面的桌面壳：选工作目录、开会话、调工具，和 `dsh web` 同一套产品能力。
- 菜单里的 **检查更新…** 会查询本仓库的 GitHub Release。有新版本时会显示说明，确认后下载并重启。
- 自动更新跟的是 **本仓库重新打包后发布的包**，不是官方 git 一推就变。上游更新后，需要有人按同一版本再打一包并发 Release，你的应用才会提示升级。

## 数据放在哪

会话、设置、凭据等在用户目录下的 `.dsh`（Windows 上一般是 `%USERPROFILE%\.dsh`）。卸载安装包不会自动清空这些数据。

## 卸载

- **安装版**：Windows「应用和功能」里卸载 **DSH Community Desktop**。
- **免安装**：删掉解压出来的文件夹即可。
- 用户数据仍在 `%USERPROFILE%\.dsh`。不需要会话记录时，再自行删除该目录（会连命令行 dsh 的数据一起删掉）。

## 常见问题

**为什么提示未知发布者？**  
社区包没有购买 Windows EV 代码签名证书。这不代表文件一定被篡改，但请只从本仓库 Releases 下载。

**会不会自动变成官方版？**  
不会。官方签名安装包和这份未签名包不能互相覆盖安装。

**没有 API Key 能用吗？**  
不能调 DeepSeek 模型。应用可以打开，但对话需要密钥。

**杀毒软件拦截？**  
未签名 Electron 安装包有时会被误报。以 GitHub Release 里的文件为准；不放心可以先在虚拟机里用。

## 许可证

上游 DeepSeek Harness 使用 [MIT License](LICENSE)，版权归 DeepSeek。本仓库的说明与社区打包分发同样按 MIT 提供（版权同时保留 DeepSeek 与仓库维护者），**不收取费用**，也 **不提供任何担保**。

项目命名使用缩写 DSH，说明文字使用「基于 DeepSeek Harness」，以符合上游 [品牌规范](https://github.com/deepseek-ai/deepseek-harness/blob/master/BRAND_GUIDELINES.zh.md)。

## 上游

- 源码：<https://github.com/deepseek-ai/deepseek-harness>
- 文档：<https://github.com/deepseek-ai/deepseek-harness/blob/master/docs/user/index.md>
- 品牌规范：<https://github.com/deepseek-ai/deepseek-harness/blob/master/BRAND_GUIDELINES.zh.md>
