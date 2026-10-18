cask "apps2samsung" do
  version "2.8.3"

  on_arm do
    sha256 "0e3909b6d4edd94c346aaa8a5e807a833f91d896aced8c349931545f12c0bed0"

    url "https://github.com/Apps2Samsung/Apps2Samsung/releases/download/v#{version}/Apps2Samsung-v#{version}-macos-arm64.dmg"
  end
  on_intel do
    sha256 "08ff65cca09b56254f9ee2212ebe7bf1dcac750a7eed43750fa890c9e4e98906"

    url "https://github.com/Apps2Samsung/Apps2Samsung/releases/download/v#{version}/Apps2Samsung-v#{version}-macos-x64.dmg"
  end

  name "Apps2Samsung"
  desc "Install any app on Samsung Tizen devices (TVs, projectors, smart monitors)"
  homepage "https://apps2samsung.madebypatrick.nl/"

  livecheck do
    url "https://github.com/Apps2Samsung/Apps2Samsung"
    strategy :github_latest
  end

  depends_on :macos

  app "Apps2Samsung.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "{{appdir}}/Apps2Samsung.app"]
  end
end
