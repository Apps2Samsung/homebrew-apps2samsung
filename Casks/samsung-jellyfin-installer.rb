cask "samsung-jellyfin-installer" do
  version "2.3.0.2"

  on_arm do
    sha256 "a74c1e54d53688eff153d96bfa93b1cb05ea4cb1871befb668abb7bd2ba1fc93"

    url "https://github.com/Jellyfin2Samsung/Samsung-Jellyfin-Installer/releases/download/v#{version}/Jellyfin2Samsung-v#{version}-macos-arm64.dmg"
  end
  on_intel do
    sha256 "9e8a3632920be11456accc1b0f2181c673dbf88b2fd1a6723a033cfa29df61a4"

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
