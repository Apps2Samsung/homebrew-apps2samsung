cask "apps2samsung" do
  version "3.2.1"

  on_arm do
    sha256 "71e37071ece2ff2e9ae6e394903f910efb9ac70cc8c67fead17b4d5098e57da2"

    url "https://github.com/Apps2Samsung/Apps2Samsung/releases/download/v#{version}/Apps2Samsung-v#{version}-macos-arm64.dmg"
  end
  on_intel do
    sha256 "ca99d92ca0b0886061f8f2281ca193bc0bcc45c651b7dea9e2c844c2116fc98b"

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
