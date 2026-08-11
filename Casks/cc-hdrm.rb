cask "cc-hdrm" do
  version "1.4.9"
  sha256 "349f88b695923ddf7042a6d5589c7bff394531580aac3293c9d835018ab5f9c8"

  url "https://github.com/rajish/cc-hdrm/releases/download/v#{version}/cc-hdrm-#{version}-macos.zip"
  name "cc-hdrm"
  desc "Menu bar utility showing Claude API usage headroom"
  homepage "https://github.com/rajish/cc-hdrm"

  depends_on macos: ">= :sonoma"

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
