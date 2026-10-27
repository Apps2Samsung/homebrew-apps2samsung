cask "apps2samsung" do
  version "3.0.0"

  on_arm do
    sha256 "63633cbad06083982630fd84c2975e5f3671085495ab081af583114f67b2849c"

    url "https://github.com/Apps2Samsung/Apps2Samsung/releases/download/v#{version}/Apps2Samsung-v#{version}-macos-arm64.dmg"
  end
  on_intel do
    sha256 "72ddc7baba2a6f378608ee1c08893ce460a70157cf77a585b75c50a94ba4e791"

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
