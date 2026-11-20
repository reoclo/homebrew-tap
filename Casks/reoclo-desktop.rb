cask "reoclo-desktop" do
  version "0.8.0"
  sha256 "e606e4d0893dfc1f4bfaa460c527abebad2e9092f00095b32f5013fc0173803c"

  url "https://github.com/reoclo/desktop/releases/download/v0.8.0/Reoclo-0.8.0.dmg"
  name "Reoclo"
  desc "Native menu bar app for Reoclo tunnels"
  homepage "https://reoclo.com"

  auto_updates true
  depends_on macos: ">= :ventura"
  depends_on formula: "reoclo/tap/reoclo"

  app "Reoclo.app"

  zap trash: [
    "~/Library/Application Support/Reoclo",
    "~/Library/LaunchAgents/com.reoclo.desktop.plist",
  ]
end
