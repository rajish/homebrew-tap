cask "cc-hdrm" do
  version "1.5.1"
  sha256 "c3726ddd3c2b88e528ad528bab7108a30076531c0a523bf85129e2a5c6e306e7"

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
