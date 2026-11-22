cask "reoclo-desktop" do
  version "0.9.0"
  sha256 "55cc774d594369a3e4fdce165ad32906ad17db713d7ea191c42039885bb58702"

  url "https://github.com/reoclo/desktop/releases/download/v0.9.0/Reoclo-0.9.0.dmg"
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
