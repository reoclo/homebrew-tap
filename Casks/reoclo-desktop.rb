cask "reoclo-desktop" do
  version "0.6.0"
  sha256 "e407d0548a3123b45239fc88048713c48ead59af0cf315023c892f1d04608f6a"

  url "https://github.com/reoclo/desktop/releases/download/v0.6.0/Reoclo-0.6.0.dmg"
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
