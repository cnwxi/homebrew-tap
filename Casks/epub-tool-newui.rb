cask "epub-tool-newui" do
  version "26.4.24"
  sha256 "66c524b84bdbb5ea94c79746067759da265cf3f672ae5a189eebc40bfe899026"

  url "https://github.com/cnwxi/epub_tool/releases/download/v#{version}/Epub.Tool.NewUI_#{version}_macos_arm64.dmg"
  name "Epub Tool NewUI"
  desc "EPUB 批量处理桌面工具"
  homepage "https://github.com/cnwxi/epub_tool"

  app "Epub Tool NewUI.app"
end
