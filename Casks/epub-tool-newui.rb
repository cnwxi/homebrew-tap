cask "epub-tool-newui" do
  version "26.7.21"
  arch arm: "arm64", intel: "x64"
  sha256 arm: "147ca912ab4ef0ad7fb9dfe3df3ea154367859011efc4d3e52e5287c35acd59d",
         intel: "4002e3cfbbe7dbbb054bd92fb6e875b22379d4655f3a647547fe95c499d72f17"
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
