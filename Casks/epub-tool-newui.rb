cask "epub-tool-newui" do
  version "26.7.11"
  arch arm: "arm64", intel: "x64"
  sha256 arm: "b136dc73d5e446b97ade787d4a5c797043c3cfa3622b129da932139b0a8c11af",
         intel: "68e076b67fb24e6f3faddab92c8089d70ec748e725c6930a9c14a4566db52e0f"
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
