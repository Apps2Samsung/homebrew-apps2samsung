cask "apps2samsung" do
  version "2.8.2"

  on_arm do
    sha256 "09723935f8c71a30e895f14946bef2b8b0c2e56137903dd49184f83f33a8a9e3"

    url "https://github.com/Apps2Samsung/Apps2Samsung/releases/download/v#{version}/Apps2Samsung-v#{version}-macos-arm64.dmg"
  end
  on_intel do
    sha256 "671bfb277d4dff02295863e6b36b004af005da84b0d8fe6d3b31ee6eb19063d0"

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
