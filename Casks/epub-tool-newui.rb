cask "epub-tool-newui" do
  version "26.7.9"
  arch arm: "arm64", intel: "x64"
  sha256 arm: "4b1323ca74a8c70e7583b17586edb6076b625c9cd1dd93e33bbb85b227e308d1",
         intel: "bb1b894a40f8d76562a8d523d551149eb7dc3efdb432f3d16c46875ed6113a4f"
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
