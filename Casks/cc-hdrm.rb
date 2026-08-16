cask "cc-hdrm" do
  version "1.6.0"
  sha256 "30b2ffe98297f248cf4b6fe2713fc6a9f252c139d497f96d77b256d57ea51aac"

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
