cask "epub-tool-newui" do
  version "26.7.25"
  arch arm: "arm64", intel: "x64"
  sha256 arm: "978c42d90f2c75c387122db3f1c7e739f330bf01a0f41e165a61af5b7f6c42fe",
         intel: "8d193cfba09032a76c494808ac2c578f856fc7f9fd285916379b676b356efdb8"
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
