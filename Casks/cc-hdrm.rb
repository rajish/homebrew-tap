cask "cc-hdrm" do
  version "1.6.1"
  sha256 "88a93c7ad631627df695b77445ab5a635a5ce30fbb9e528df8bb223808326cd0"

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
