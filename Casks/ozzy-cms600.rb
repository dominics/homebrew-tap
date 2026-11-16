cask "ozzy-cms600" do
  version "0.5.0-rc.1"
  sha256 "ccdf21d48f789a418774761b484af3aa704d83bd496d4d52cec8d1fab97297b8"

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
