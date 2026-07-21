cask "epub-tool-newui" do
  version "26.7.21"
  arch arm: "arm64", intel: "x64"
  sha256 arm: "06666fbba5c8ba3553b89ae295c15d6ac77dfc2d7c02d4b219c50ccc68c6a2c7",
         intel: "8695b56d715b7d0e3e9c328c66b073e8c5b43d0dd65800673679c1d89aaa62a3"
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
