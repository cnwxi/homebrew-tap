cask "epub-tool-newui" do
  version "26.7.1"
  arch arm: "arm64", intel: "x64"
  sha256 arm: "ac314a743595de011a1e91f3a65cfbcc317e5bf8455be20fee8bc8a9d30ee129",
         intel: "e0cee659f4ea8671ffccc2e4fda5443e644ce1c9b7fcf4f3663346833caacb19"
  url "https://github.com/cnwxi/epub_tool/releases/download/v#{version}/Epub.Tool.NewUI_#{version}_macos_#{arch}_small.dmg"
  name "Epub Tool NewUI"
  desc "EPUB 批量处理桌面工具"
  homepage "https://github.com/cnwxi/epub_tool"

  app "Epub Tool NewUI.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Epub Tool NewUI.app"],
                   sudo: false
  end
end
