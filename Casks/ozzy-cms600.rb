cask "ozzy-cms600" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/dominics/Ozzy/releases/download/v#{version}/Ozzy-CMS600-#{version}.pkg"
  name "Ozzy for Dynacord CMS 600-3"
  desc "Userspace audio and MIDI driver for the Dynacord CMS 600-3 mixer"
  homepage "https://github.com/dominics/Ozzy"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  pkg "Ozzy-CMS600-#{version}.pkg"

  uninstall script:  {
              executable: "/Library/Application Support/Ozzy/uninstall.sh",
              sudo:       true,
            },
            pkgutil: "com.ozzy.userspace"
end
