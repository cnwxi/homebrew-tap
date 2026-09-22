cask "epub-tool-newui" do
  arch arm: "arm64", intel: "x64"

  version "26.9.22"
  sha256 arm: "5d2b9a658f8117921876bf4f01868dc69d1177211ff948626fdec467df241ece",
         intel: "e5e0576914e9cf50b2e2f49ad4302c97f02a7f325acff9c1e2cd8ec3c8098ed6"
  url "https://github.com/cnwxi/epub_tool_rust/releases/download/v#{version}/Epub.Tool.NewUI_#{version}_macos_#{arch}_small.dmg"
  name "Epub Tool NewUI"
  desc "EPUB 批量处理桌面工具"
  homepage "https://github.com/cnwxi/epub_tool_rust"

  app "Epub Tool NewUI.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/Epub Tool NewUI.app"]
  end
end
