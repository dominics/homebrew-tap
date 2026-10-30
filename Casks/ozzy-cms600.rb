cask "ozzy-cms600" do
  version "0.3.0"
  sha256 "50c1fead4e2c356c8a8eed3d5c1fa691c0caf58f38d6faf7f16660f9aa34819a"

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
