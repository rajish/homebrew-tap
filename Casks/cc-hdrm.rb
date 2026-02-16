cask "cc-hdrm" do
  version "1.3.0"
  sha256 "6b6d7c31d5eeb8377f9be93603989a53a8b2fe211362a53638cc847a9b839123"

  url "https://github.com/rajish/cc-hdrm/releases/download/v#{version}/cc-hdrm-#{version}-macos.zip"
  name "cc-hdrm"
  desc "Menu bar utility showing Claude API usage headroom"
  homepage "https://github.com/rajish/cc-hdrm"

  depends_on macos: ">= :sonoma"

  app "cc-hdrm.app"

  zap trash: [
    "~/Library/Preferences/com.cc-hdrm.app.plist",
  ]
end
