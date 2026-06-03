cask "samsung-jellyfin-installer" do
  version "2.3.1.0"

  on_arm do
    sha256 "02c114898883255d50636f41e9018f6477565b8256a9f64d44f7be6269503135"

    url "https://github.com/Jellyfin2Samsung/Samsung-Jellyfin-Installer/releases/download/v#{version}/Jellyfin2Samsung-v#{version}-macos-arm64.dmg"
  end
  on_intel do
    sha256 "3d5e3307ea90717d6512626ad9526c50f160cae767e3a9347d5d80a44ee6dd9a"

    url "https://github.com/Jellyfin2Samsung/Samsung-Jellyfin-Installer/releases/download/v#{version}/Jellyfin2Samsung-v#{version}-macos-x64.dmg"
  end

  name "Samsung Jellyfin Installer"
  desc "Jellyfin client for Samsung Tizen TVs"
  homepage "https://github.com/Jellyfin2Samsung/Samsung-Jellyfin-Installer"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Jellyfin2Samsung.app"
end
