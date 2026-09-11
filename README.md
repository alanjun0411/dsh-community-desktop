# DSH Community Desktop

简体中文 | [English](README.en.md)

## 非官方声明

**DSH Community Desktop 是独立维护者提供的社区构建，不是 DeepSeek 的产品。**

本仓库、本安装包及其维护者：

- **不是** DeepSeek 或 DeepSeek Harness 的官方产品、官方网站、官方下载或官方更新渠道；
- **不代表** DeepSeek，与 DeepSeek **不存在** 隶属、代理、合作、赞助或关联关系；
- **未获得** DeepSeek 的授权、许可、认证或背书。

项目名称使用缩写 **DSH**。仅在描述中使用「基于 DeepSeek Harness 构建」。**DeepSeek Harness** 是 DeepSeek 的注册商标，完整商标不得用作本项目名称。说明方式遵循上游 [品牌规范](https://github.com/deepseek-ai/deepseek-harness/blob/master/BRAND_GUIDELINES.zh.md)。请勿把本项目的界面、图标或下载链接理解为官方品牌素材或官方渠道。

本构建按 [MIT License](LICENSE) **按现状（AS IS）** 提供，**不提供任何明示或默示担保**。使用即由你自行承担风险。这不是法律咨询；若你不确定是否适合使用，请自行评估或咨询专业人士。

## 这是什么

这是基于上游开源项目 [DeepSeek Harness](https://github.com/deepseek-ai/deepseek-harness) 的 **Windows 社区打包**：把上游桌面应用以及其附带的 Node.js、pnpm 打进安装包或 zip，使目标电脑不必单独安装开发环境。

- 上游源码、文档与安全说明以 [deepseek-ai/deepseek-harness](https://github.com/deepseek-ai/deepseek-harness) 为准。
- 本仓库当前构建对应上游版本 **0.1.5-rc.1**（预览版本，不是稳定版承诺）。
- 仅提供 Windows 10/11 **64 位** 包。没有 macOS 或 Linux 包。

## 这不是什么

- 不是 DeepSeek 官方桌面客户端，也不能代替 DeepSeek 现在或将来可能提供的任何官方渠道。
- 不是已签名、已公证或已通过安全审计的发行版。
- 自动更新**只**查询本仓库的 GitHub Release，**不会**把本机构成官方签名安装，也**不会**在官方 git 推送后自动变成官方版。

## 安全与风险

上游说明：DeepSeek Harness 是**实验性开发者预览**软件，**尚未接受安全审计**，不得视为安全或可用于生产。它可能执行模型生成的代码与命令、加载插件，并访问你允许的文件、网络、进程和凭据。错误输出、缺陷、配置问题、恶意输入或不可信插件可能损坏电脑、修改或删除文件、泄露数据。沙箱和审批**不能保证**隔离或免受损害。

负责任地使用：

- 仅授予所需的最小权限；优先在一次性虚拟机或专用环境中运行；
- 备份它可能访问的文件；不要向其暴露你不能接受丢失或泄露的数据与密钥；
- 在允许运行前检查拟执行的命令、插件与配置。

完整原文见上游 [SAFETY.md](https://github.com/deepseek-ai/deepseek-harness/blob/master/SAFETY.zh.md)。本社区构建额外未经代码签名，风险不低于上游软件本身。

**请勿就本仓库的安装包、自动更新或本说明向 DeepSeek 官方支持渠道求助。** 那些渠道不对本非官方构建负责。

## 下载

请只从本仓库 [Releases](https://github.com/alanjun0411/dsh-community-desktop/releases/latest) 获取文件。其他网站、网盘或转发文件与本仓库无关，维护者无法为其真实性负责。

| 文件 | 用途 |
| --- | --- |
| `dsh-community-desktop-*-win-x64.exe` | 安装版。安装后开始菜单中的名称为 **DSH Community Desktop**。 |
| `dsh-community-desktop-*-win-x64.zip` | 免安装。解压后运行 `DSH Community Desktop.exe`。 |

## 安装与首次启动

1. 下载上述 exe 或 zip。文件**未**使用 Windows EV 代码签名证书签名。系统或安全软件可能显示 SmartScreen、「未知发布者」或拦截提示。这是未签名软件的常见结果，**不表示**文件经过安全审查，也**不表示**文件未被篡改。
2. 是否忽略系统警告并继续运行，由你自行判断。本说明**不建议**关闭系统安全功能或杀毒软件，也不构成对绕过安全提示的保证或指导。
3. 安装版按安装程序完成即可。安装过程会解压并安装内置运行时，并显示当前步骤、已用时、剩余时间估计和进度条；请先退出正在运行的 DSH Community Desktop。免安装版请解压到你具有写权限的目录，第一次打开时会显示同一准备窗口。
4. 安装版完成后再打开应用时，仍会短暂启动桌面后端。免安装版第一次打开可能较慢。
5. 模型对话需要你自己的 DeepSeek API Key（也可使用环境变量 `DEEPSEEK_API_KEY`）。安装包**不含**密钥。密钥由你保管，并须遵守 DeepSeek 的 API 与产品条款。维护者不收集你的密钥。

## 更新

菜单中的「检查更新…」仅查询本仓库发布的 GitHub Release。有新构建时可能显示该 Release 的说明。上游仓库的提交**不会**自动变成你已安装的应用；只有本仓库再次打包并发布后，已安装副本才可能收到更新提示。

## 数据与卸载

会话、设置、凭据等通常位于 `%USERPROFILE%\.dsh`。卸载安装包或删除免安装目录**不会**自动删除这些数据。删除 `.dsh` 也可能影响同一用户下的命令行 dsh 数据，请先确认。

- 安装版：在 Windows「应用和功能」中卸载 **DSH Community Desktop**。
- 免安装：删除解压目录。

## 许可证、商标与免责

上游 DeepSeek Harness 以 [MIT License](https://github.com/deepseek-ai/deepseek-harness/blob/master/LICENSE) 发布，版权归属 DeepSeek。MIT 许可允许复制、修改与再分发，并要求保留版权与许可声明。本仓库按同一许可证提供社区构建与说明；[本仓库 LICENSE](LICENSE) 保留 DeepSeek 版权声明，并注明本仓库维护者。构建中还包含 Electron、Node.js、pnpm 等第三方组件，各依其各自许可证。

**DeepSeek**、**DeepSeek Harness** 及其他 DeepSeek 标识均为其权利人的商标或注册商标。本 README 中的使用仅为说明来源与关系，不表示任何授权、赞助或关联。

在适用法律允许的最大范围内，DeepSeek、本仓库维护者及任何贡献者均不对因下载、安装、使用、更新或无法使用本构建而引起的任何损害承担责任，包括但不限于电脑损坏、数据丢失或泄露、文件损坏、安全事件、账号或密钥滥用、服务中断或利润损失。法律对消费者或其他主体的强制权利，以其规定为准，本声明不试图排除不可排除的权利。

本仓库不收取使用费。不收费不等于提供支持、承诺或担保。

## 上游链接

- 源码：<https://github.com/deepseek-ai/deepseek-harness>
- 用户文档：<https://github.com/deepseek-ai/deepseek-harness/blob/master/docs/user/index.md>
- 安全说明：<https://github.com/deepseek-ai/deepseek-harness/blob/master/SAFETY.zh.md>
- 品牌规范：<https://github.com/deepseek-ai/deepseek-harness/blob/master/BRAND_GUIDELINES.zh.md>
- 上游许可证：<https://github.com/deepseek-ai/deepseek-harness/blob/master/LICENSE>
