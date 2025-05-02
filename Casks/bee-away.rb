cask "bee-away" do
  version "0.0.1"
  sha256 "57d741bb3851747d5f0adc1ab07f8500ca5b4bfb5deadcc592f529f7403f9226"

  url "https://github.com/ragarwalll/bee-away/releases/download/v#{version}/BeeAway-v#{version}.dmg",
      verified: "github.com/ragarwalll/bee-away/"
  name "BeeAway"
  desc "Keep your OS awake by simulating input"
  homepage "https://github.com/ragarwalll/bee-away"

  app "BeeAway.app"
end
