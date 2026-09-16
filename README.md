# cnwxi Homebrew Tap

本 Tap 提供由 [`cnwxi/epub_tool_rust`](https://github.com/cnwxi/epub_tool_rust) 发布的 macOS 版本。
旧版 `cnwxi/epub_tool` 已停止维护；Cask 的版本、架构校验和下载地址由
`epub_tool_rust` 的 GitHub Release 自动更新。

## 使用方法

```bash
# 添加此 tap
brew tap cnwxi/tap

# 安装应用
brew install --cask epub-tool-newui

# 更新应用
brew upgrade --cask epub-tool-newui
```

## 可用 Casks

| Cask | 说明 |
|------|------|
| `epub-tool-newui` | EPUB 批量处理桌面工具 |

## 发布与维护

正式版 Release 发布后，`epub_tool_rust` 的 workflow 会读取 Apple Silicon 和 Intel
两种 macOS small DMG，计算 SHA-256，并提交更新后的
`Casks/epub-tool-newui.rb`。预发布版本不会更新 Cask。需要重试时，可在
`epub_tool_rust` 仓库手动运行 `Update Homebrew Tap` workflow 并填写 Release tag。
