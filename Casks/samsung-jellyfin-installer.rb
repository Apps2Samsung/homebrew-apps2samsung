cask "samsung-jellyfin-installer" do
  version "2.3.0.1"

  on_arm do
    sha256 "a0a976502d859275fec5f8dbbe2730df1eea1ccc880aa1635d857c08216b68a1"

    url "https://github.com/Jellyfin2Samsung/Samsung-Jellyfin-Installer/releases/download/v#{version}/Jellyfin2Samsung-v#{version}-macos-arm64.dmg"
  end
  on_intel do
    sha256 "3897fd358b438894b7ee36d4c69ce8e1442b35acdbeda49b9b67e08870728d81"

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
