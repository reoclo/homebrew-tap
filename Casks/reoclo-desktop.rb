cask "reoclo-desktop" do
  version "0.5.0"
  # The tap workflow replaces this with the published DMG checksum.
  sha256 :no_check

  url "https://github.com/reoclo/desktop/releases/download/v#{version}/Reoclo-#{version}.dmg"
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
