cask "epub-tool-newui" do
  version "26.7.12"
  arch arm: "arm64", intel: "x64"
  sha256 arm: "88522db59c5cc1f0d17b1ff448d500f56783f92b87e0a07563889f40a40072e0",
         intel: "c94b7406873da13e90abfb9d9dfaee15b41d44c8ba94701346c3384104e139c0"
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
