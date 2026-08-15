cask "epub-tool-newui" do
  version "26.8.15"
  arch arm: "arm64", intel: "x64"
  sha256 arm: "eb0462457f22397487eef033221a60dc4d676f94140600a9242b1cd6a037afbf",
         intel: "5f4656d9c79338ada95019b4ce71a377eb796e4b3eca068383644984b41885ba"
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
