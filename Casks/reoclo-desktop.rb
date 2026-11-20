cask "reoclo-desktop" do
  version "0.5.0"
  sha256 "3063cc32f5c7c59434d0b1adcf935da53a54581d1d098c047f4f3604fad06390"

  url "https://github.com/reoclo/desktop/releases/download/v0.5.0/Reoclo-0.5.0.dmg"
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
