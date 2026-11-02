cask "cc-hdrm" do
  version "1.7.0"
  sha256 "eff59725fe51fe6851d599aee7ac863aaefa78b34f3dc2707a8a7cf28acf9045"

  url "https://github.com/rajish/cc-hdrm/releases/download/v#{version}/cc-hdrm-#{version}-macos.zip"
  name "cc-hdrm"
  desc "Menu bar utility showing Claude API usage headroom"
  homepage "https://github.com/rajish/cc-hdrm"

  depends_on macos: :sonoma

  app "cc-hdrm.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/cc-hdrm.app"],
                   must_succeed: false
  end

  zap trash: [
    "~/Library/Preferences/com.cc-hdrm.app.plist",
  ]
end
