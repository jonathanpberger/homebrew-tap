cask "chromeless" do
  version "5.0.0"
  sha256 "49cf9e6ddbe7534537a438626941f971cdd80cbdbebb7b5cd1f21db78fc782c4"

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