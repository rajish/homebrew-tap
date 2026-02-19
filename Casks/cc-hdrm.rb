cask "cc-hdrm" do
  version "1.4.1"
  sha256 "6fdad8f070341dc6568aa4591b9e6785b19c034acf17d1a1492684c48ac84d2f"

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
