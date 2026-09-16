cask "epub-tool-newui" do
  arch arm: "arm64", intel: "x64"

  version "26.9.16"
  sha256 arm: "9c6f44a56f6b5b842ed4c8ba1867bfca860fd2e5ad94f2d673c3e5aa92883ee9",
         intel: "b6f6dbdecf578048ca4eca3a26f674f9a69b721aab018fef85dcb867713b01bc"

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
