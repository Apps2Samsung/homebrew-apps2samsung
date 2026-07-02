cask "apps2samsung" do
  version "2.5.7"

  on_arm do
    sha256 "e2d100c8b8ac64149e8c3e8af44a639db8740f6d593b55d30e36b00f12418c67"

    url "https://github.com/Apps2Samsung/Apps2Samsung/releases/download/v#{version}/Apps2Samsung-v#{version}-macos-arm64.dmg"
  end
  on_intel do
    sha256 "8811ca2db44f76d24aae3595bab670d87c35ce1acd89959b802281c8dda6df00"

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
