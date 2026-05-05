cask "samsung-jellyfin-installer" do
  version "2.2.0.9"

  on_arm do
    sha256 "ec6b02ba954d898e8b0711dafaf0e7e11419f231735e05c6dcebcf5b1be09366"

    url "https://github.com/Jellyfin2Samsung/Samsung-Jellyfin-Installer/releases/download/v#{version}/Jellyfin2Samsung-v#{version}-macos-arm64.dmg"
  end
  on_intel do
    sha256 "1ae4becc36610950063abaf6e32f025c69c9c4f84c8c57a183f7a469e3e2a90c"

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
