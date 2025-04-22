cask "chromeless" do
  version "5.0.0"
  sha256 "ae4a6ee6be5b9107c0da6fadf212c18a323e9f996170dec476b4d06d4e586413"

  url "https://github.com/jonathanpberger/chromeless/releases/download/v#{version}/Chromeless-#{version}-universal.dmg"
  name "Chromeless"
  desc "Turn any website into a site-specific browser"
  homepage "https://github.com/jonathanpberger/chromeless"

  auto_updates true

  app "Chromeless.app"

  zap trash: [
    "~/Library/Application Support/Chromeless",
    "~/Library/Caches/com.webcatalog.chromeless",
    "~/Library/Caches/com.webcatalog.chromeless.ShipIt",
    "~/Library/Logs/Chromeless",
    "~/Library/Preferences/com.webcatalog.chromeless.plist",
    "~/Library/Saved Application State/com.webcatalog.chromeless.savedState"
  ]
end