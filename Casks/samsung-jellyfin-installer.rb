cask "samsung-jellyfin-installer" do
  version "2.3.1.1"

  on_arm do
    sha256 "61d98246416a551ad146b85b64e54a1d48b8b9fe1a8a0c226631a597e7037d39"

    url "https://github.com/Jellyfin2Samsung/Samsung-Jellyfin-Installer/releases/download/v#{version}/Jellyfin2Samsung-v#{version}-macos-arm64.dmg"
  end
  on_intel do
    sha256 "701e094d43715f14ae02e1a2d362759efa7546f7a35f80d302812e1b93f92761"

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
