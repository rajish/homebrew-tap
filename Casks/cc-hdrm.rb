cask "cc-hdrm" do
  version "1.4.5"
  sha256 "5a041c63c49e60377b0d4ea014058663236a5151d8cd9038e029a5cf1bddfe36"

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
