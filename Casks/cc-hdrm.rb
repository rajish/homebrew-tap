cask "cc-hdrm" do
  version "1.4.4"
  sha256 "d0cf71eb8fcda94bf6902586cf410853a63fe48517bc0a8c43235c01e2ca29ac"

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
