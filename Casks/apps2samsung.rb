cask "apps2samsung" do
  version "2.5.4"

  on_arm do
    sha256 "743f6675b256b38a7206f952dee4cdec050d32e94ab2502ca4dc214f4489e4c6"

    url "https://github.com/Apps2Samsung/Apps2Samsung/releases/download/v#{version}/Apps2Samsung-v#{version}-macos-arm64.dmg"
  end
  on_intel do
    sha256 "8bc3ab78e89cd3f894d2ea6573f4a777384eb95d1406292fe69ba0d60cbb9802"

    url "https://github.com/Apps2Samsung/Apps2Samsung/releases/download/v#{version}/Apps2Samsung-v#{version}-macos-x64.dmg"
  end

  name "Apps2Samsung"
  desc "Install any app on Samsung Tizen devices (TVs, projectors, smart monitors)"
  homepage "https://apps2samsung.madebypatrick.nl"

  livecheck do
    url "https://github.com/Apps2Samsung/Apps2Samsung"
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Apps2Samsung.app"
end
