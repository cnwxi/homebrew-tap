cask "epub-tool-newui" do
  version "26.6.15"
  sha256 "4f82e2052055b0aecee1f2937867785f4412f703fdd0870e5ca3291b6434500e"

  url "https://github.com/cnwxi/epub_tool/releases/download/v#{version}/Epub.Tool.NewUI_#{version}_macos_arm64_small.dmg"
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
