cask "epub-tool-newui" do
  version "26.7.15"
  arch arm: "arm64", intel: "x64"
  sha256 arm: "f5252bafece4810e71ad66bda20a69479b1aaa2c462a3dce2236ffd80a1a7283",
         intel: "dbd50c4f5a3e93f4c19e67124f75691a3748839f46d6e9d74f3eeb1523e48fc5"
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
