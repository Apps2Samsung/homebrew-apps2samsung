cask "apps2samsung" do
  version "2.5.6"

  on_arm do
    sha256 "c3cbec86e541ebf1738a94f5895a26144dfc3bb4964807f249de69486c446e72"

    url "https://github.com/Apps2Samsung/Apps2Samsung/releases/download/v#{version}/Apps2Samsung-v#{version}-macos-arm64.dmg"
  end
  on_intel do
    sha256 "9233b6965a68299d6a02da192b6936565411a181d7c3a3cd3095ff7509dda9b5"

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
