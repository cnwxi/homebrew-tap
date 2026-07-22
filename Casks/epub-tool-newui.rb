cask "epub-tool-newui" do
  version "26.7.22"
  arch arm: "arm64", intel: "x64"
  sha256 arm: "adfe29d3ac6c638d38a4c44e1b2fca494494ec6dcd025a14f84cf54e7f38d052",
         intel: "068a4ed8aef06e92d1d30c526730e2e54aab820d00147a0c65bb37dfd84ca5d4"
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
