cask "epub-tool-newui" do
  version "26.7.29"
  arch arm: "arm64", intel: "x64"
  sha256 arm: "d22091e046a63e8a30676a7ab77c449d5397079b2613a8c388ac63ccf5a5b59d",
         intel: "3b288efc1b6b20a4e1f6570e55cb1915701b9f386ed2bd215d911e7495f62f6f"
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
