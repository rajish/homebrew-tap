cask "cc-hdrm" do
  version "1.3.0"
  sha256 "3054dd181f7b88c4981039a1ec5ed01185308008ff62bbd5a14151671a0df357"

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
