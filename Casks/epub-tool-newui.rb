cask "epub-tool-newui" do
  version "26.7.10"
  arch arm: "arm64", intel: "x64"
  sha256 arm: "a591a5757b25a6c8dce75cf0849d664193abf42ce037937fce356404acec6757",
         intel: "09bbe1ef8356587b9cdb4a2725bae491b2f336b1c19940950797cae251d775e4"
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
