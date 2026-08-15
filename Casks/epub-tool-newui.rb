cask "epub-tool-newui" do
  version "26.8.15"
  arch arm: "arm64", intel: "x64"
  sha256 arm: "9926cc3d4d18af3fc7789abb9acca01d6a5c4dafa0e1b34ca876d8d3c7189452",
         intel: "1c05cadf05328297dd970d3bd1bf35643ef367484b7cd69c84dbf5b1a39d081c"
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
