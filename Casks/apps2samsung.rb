cask "apps2samsung" do
  version "3.3.0"

  on_arm do
    sha256 "1adea4ec237413ccd34702a278549edd50ce716adfafe3f52b1907d2f3012d3b"

    url "https://github.com/Apps2Samsung/Apps2Samsung/releases/download/v#{version}/Apps2Samsung-v#{version}-macos-arm64.dmg"
  end
  on_intel do
    sha256 "ed0eed4687bad6e9656636a69ca55967bba86d4e9a06c1625f3c0f2c03d92f58"

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
