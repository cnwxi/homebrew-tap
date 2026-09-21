cask "epub-tool-newui" do
  arch arm: "arm64", intel: "x64"

  version "26.9.21"
  sha256 arm: "30fa4d43d690677632827df804d429111f52d281bfa498d222b250fa4e0e5438",
         intel: "fa0c9bb5f7cfd24a0681ebb622f02ed0ccb100bfbb049889a42f450df6b47a45"
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
