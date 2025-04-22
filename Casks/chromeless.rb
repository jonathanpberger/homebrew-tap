cask "chromeless" do
  version "4.6.0"
  sha256 "fd9f6e5b852e5cbe1a3b7eb84c532622ee9fa7073e89e016aca2a5bc1c611b3c"

  url "https://github.com/webcatalog/chromeless/releases/download/v#{version}/Chromeless-#{version}-universal.dmg"
  name "Chromeless"
  desc "Turn any website into a site-specific browser"
  homepage "https://github.com/webcatalog/chromeless"

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