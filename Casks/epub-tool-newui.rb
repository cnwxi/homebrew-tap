cask "epub-tool-newui" do
  version "26.7.15"
  arch arm: "arm64", intel: "x64"
  sha256 arm: "cbc612945170b7f257fb21e1a7791436320e67a6aee9662eb76b8c94ba89df4d",
         intel: "675d32af56cfa320a51ca3b6877743b58300794d599171531ae6818932c87402"
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
