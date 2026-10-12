cask "ozzy-cms600" do
  version "0.1.0"
  sha256 "94449722482c1db38a26a4509d082161567bfe4efcfeb38eeeccda4fef26f229"

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
