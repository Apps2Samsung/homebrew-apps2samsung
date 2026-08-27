cask "apps2samsung" do
  version "2.7.8"

  on_arm do
    sha256 "1167ba065d69d8c3bb5e45448eca305795bbf7e48ed95279570661eab8baee23"

    url "https://github.com/Apps2Samsung/Apps2Samsung/releases/download/v#{version}/Apps2Samsung-v#{version}-macos-arm64.dmg"
  end
  on_intel do
    sha256 "3b8e9c774edba91c5edd37be585007ddbfaf963792cebe1c2ec6ecefc4bb831a"

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
