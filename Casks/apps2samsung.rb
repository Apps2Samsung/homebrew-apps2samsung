cask "apps2samsung" do
  version "3.1.0"

  on_arm do
    sha256 "979f758c2fd84e7abfe7be9b73c50b4c14e38d5c90ebbd1b1fbca8e76d394bc2"

    url "https://github.com/Apps2Samsung/Apps2Samsung/releases/download/v#{version}/Apps2Samsung-v#{version}-macos-arm64.dmg"
  end
  on_intel do
    sha256 "6dd7bcae1085bc28721b59dded9fdb27b2e30eb97d6b12b18bcd2b08bf6a4097"

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
