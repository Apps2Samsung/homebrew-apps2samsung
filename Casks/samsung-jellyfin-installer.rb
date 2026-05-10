cask "samsung-jellyfin-installer" do
  version "2.2.1.0"

  on_arm do
    sha256 "763f1ed6402ca6fd51dc865c56ef49f9f8e4f7e57882fc75d9e9758d3b43f2e2"

    url "https://github.com/Jellyfin2Samsung/Samsung-Jellyfin-Installer/releases/download/v#{version}/Jellyfin2Samsung-v#{version}-macos-arm64.dmg"
  end
  on_intel do
    sha256 "58915643e2ed5b5954224e9b0f66a281ede4335e75375c184296e31efe88b2b8"

    url "https://github.com/Jellyfin2Samsung/Samsung-Jellyfin-Installer/releases/download/v#{version}/Jellyfin2Samsung-v#{version}-macos-x64.dmg"
  end

  name "Samsung Jellyfin Installer"
  desc "Jellyfin client for Samsung Tizen TVs"
  homepage "https://github.com/Jellyfin2Samsung/Samsung-Jellyfin-Installer"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Jellyfin2Samsung.app"
end
