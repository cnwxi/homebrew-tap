cask "epub-tool-newui" do
  version "26.7.23"
  arch arm: "arm64", intel: "x64"
  sha256 arm: "7a4b6dddf599b526c4947b05628bc974fbefc1adca07c813196ad80da4c10dac",
         intel: "24ce232c4d8d34e0d99af7fcc43eaf3f48268e01b708ef94d35a8684f55fca57"
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
