cask "epub-tool-newui" do
  version "26.7.23"
  arch arm: "arm64", intel: "x64"
  sha256 arm: "8e2a6c0770127327a9a466642b166e88d4630999419cd9a2029eedf03db808f2",
         intel: "deea0de55aff1cff3d93c2724e06e703eff8becfa24a6195ce8849c544ca3067"
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
