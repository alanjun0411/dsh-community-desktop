# DSH Community Desktop

[简体中文](README.md) | English

## Unofficial notice

**DSH Community Desktop is an independent community build. It is not a DeepSeek product.**

This repository, these installers, and their maintainer:

- are **not** an official DeepSeek or DeepSeek Harness product, website, download, or update channel;
- do **not** represent DeepSeek and have **no** affiliation, agency, partnership, sponsorship, or other relationship with DeepSeek;
- are **not** authorized, licensed, certified, or endorsed by DeepSeek.

The project name uses the abbreviation **DSH**. Descriptive text may say it is **built on DeepSeek Harness**. **DeepSeek Harness** is a registered trademark of DeepSeek and must not be used as this project's name. This follows the upstream [brand guidelines](https://github.com/deepseek-ai/deepseek-harness/blob/master/BRAND_GUIDELINES.md). Do not treat this project's UI, icons, or download links as official brand materials or official channels.

This build is provided under the [MIT License](LICENSE) **AS IS**, **without warranty of any kind**, express or implied. You use it at your own risk. This page is not legal advice. If you are unsure whether you should use it, assess the risk yourself or obtain professional advice.

## What this is

This is an independent **Windows community packaging** of the upstream open-source project [DeepSeek Harness](https://github.com/deepseek-ai/deepseek-harness). It bundles the upstream desktop application with the Node.js and pnpm runtimes it ships, so a PC does not need a separate developer toolchain.

- Upstream source, documentation, and safety text are authoritative at [deepseek-ai/deepseek-harness](https://github.com/deepseek-ai/deepseek-harness).
- This repository's current build corresponds to upstream version **0.1.5-rc.1** (a prerelease; not a stability promise).
- Only **64-bit** Windows 10/11 packages are provided. There is no macOS or Linux package.

## What this is not

- It is not the official DeepSeek desktop client and does not replace any official channel DeepSeek may offer now or later.
- It is not a signed, notarized, or security-audited release.
- Automatic updates query **only** GitHub Releases of **this** repository. They will **not** turn this install into an official signed build, and they will **not** apply when official git is pushed unless this repository rebuilds and publishes that revision.

## Safety and risk

Upstream states that DeepSeek Harness is **experimental developer-preview** software, has **not undergone a security audit**, and must not be treated as secure or production-ready. It can execute model-generated code and commands, load plugins, and access files, network, processes, and credentials you make available. Incorrect output, defects, misconfiguration, malicious input, or untrusted plugins may damage the computer, modify or delete files, or disclose data. Sandboxing and approval prompts **do not guarantee** isolation or prevent harm.

Use it responsibly:

- grant only the least privilege required; prefer a disposable virtual machine or dedicated environment;
- keep backups of files it can access; do not expose data or secrets you cannot afford to lose or leak;
- review proposed commands, plugins, and configuration before allowing them to run.

See the full upstream [SAFETY.md](https://github.com/deepseek-ai/deepseek-harness/blob/master/SAFETY.md). This community build is additionally **not** Authenticode-signed, so the risk is not lower than the upstream software itself.

**Do not contact DeepSeek official support about this repository's installers, auto-update, or this documentation.** Those channels are not responsible for this unofficial build.

## Download

Download only from this repository's [Releases](https://github.com/alanjun0411/dsh-community-desktop/releases/latest). Files on other sites, mirrors, or forwards are unrelated to this repository. The maintainer cannot vouch for them.

| File | Purpose |
| --- | --- |
| `dsh-community-desktop-*-win-x64.exe` | Installer. The Start Menu name is **DSH Community Desktop**. |
| `dsh-community-desktop-*-win-x64.zip` | No-install archive. After unzipping, run `DSH Community Desktop.exe`. |

## Install and first launch

1. Download the exe or zip above. The files are **not** signed with a Windows EV code-signing certificate. Windows or security software may show SmartScreen, “Unknown publisher,” or a block. That is common for unsigned software. It does **not** mean the files were security-reviewed, and it does **not** mean they have not been tampered with.
2. Whether you continue past a system warning is your decision. This document does **not** recommend turning off OS security features or antivirus, and it is not guidance or a warranty for bypassing those warnings.
3. For the installer, follow the setup wizard. Setup unpacks and installs the bundled runtime and shows the current step, elapsed time, a remaining-time estimate, and a progress bar. Quit a running copy of DSH Community Desktop first. For the zip, extract it to a directory you can write to; the first open shows the same preparing window.
4. After the installer finishes, opening the app still starts the desktop backend for a short time. The zip’s first open may be slower.
5. Model chat needs your own DeepSeek API key (or the `DEEPSEEK_API_KEY` environment variable). The package does **not** contain a key. You keep the key and must follow DeepSeek's API and product terms. The maintainer does not collect your key.

## Updates

**Check for Updates…** queries only GitHub Releases published in this repository. A newer community build may show that release's notes. Commits in the upstream repository do **not** by themselves change an installed copy. An installed copy may see an update only after this repository rebuilds and publishes it.

## Data and uninstall

Sessions, settings, and credentials typically live under `%USERPROFILE%\.dsh`. Uninstalling the app or deleting the unzipped folder does **not** automatically delete that data. Deleting `.dsh` may also remove CLI dsh data for the same user.

- Installer: uninstall **DSH Community Desktop** from Windows Apps & features.
- Zip: delete the extracted folder.

## License, trademarks, and disclaimer

Upstream DeepSeek Harness is published under the [MIT License](https://github.com/deepseek-ai/deepseek-harness/blob/master/LICENSE), copyright DeepSeek. MIT permits copying, modification, and redistribution, provided the copyright notice and permission notice are preserved. This repository offers the community build and this documentation under the same license. The [LICENSE](LICENSE) here keeps the DeepSeek notice and names this repository's maintainer. The build also includes third-party components such as Electron, Node.js, and pnpm, each under its own license.

**DeepSeek**, **DeepSeek Harness**, and other DeepSeek names and marks are trademarks or registered trademarks of their owners. Use in this README is only to describe origin and relationship. It does not grant any license, sponsorship, or affiliation.

To the maximum extent permitted by applicable law, DeepSeek, this repository's maintainer, and any contributors are not liable for any damage arising from downloading, installing, using, updating, or being unable to use this build, including without limitation computer damage, data loss or disclosure, file corruption, security incidents, misuse of accounts or keys, interruption, or lost profits. Mandatory rights that applicable law does not allow to be excluded remain unaffected.

This repository does not charge a fee for the build. Absence of a fee is not support, a promise, or a warranty.

## Upstream

- Source: <https://github.com/deepseek-ai/deepseek-harness>
- User docs: <https://github.com/deepseek-ai/deepseek-harness/blob/master/docs/user/index.md>
- Safety: <https://github.com/deepseek-ai/deepseek-harness/blob/master/SAFETY.md>
- Brand guidelines: <https://github.com/deepseek-ai/deepseek-harness/blob/master/BRAND_GUIDELINES.md>
- Upstream license: <https://github.com/deepseek-ai/deepseek-harness/blob/master/LICENSE>
