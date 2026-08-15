cask "epub-tool-newui" do
  version "26.8.15-1"
  arch arm: "arm64", intel: "x64"
  sha256 arm: "6b9261b8ded0392b96a757e83cc75d2864f41a57054e83cdb2935407b93e0c43",
         intel: "41f0b94711a110966d598ef00668ddd09051137ca7b0ecfbafabd016b3c0baee"
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
