class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.104.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.104.4/reoclo-darwin-x64"
      sha256 "10d5cfc061c62a5f69e213a945e2b33091f200086d81ecf7ea735ffb91239ae5"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.104.4/reoclo-darwin-arm64"
      sha256 "fdd1e3aca6fb3ea2cc0eef2e3cbdb84b6bd49b952e07da12c0a6fd1d994de5e3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.104.4/reoclo-linux-x64"
      sha256 "daef318bead3029c6a806a89eeb5b84b52b571275c68c1e530fbc303c4ef4c43"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.104.4/reoclo-linux-arm64"
      sha256 "6cfdbb645f99a84757a5c3409b6a9f7c4c55226928d5548e723c6c5b4af3f63d"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
    bin.install_symlink "reoclo" => "rc"
  end

  test do
    assert_match(/^0.104.4$/, shell_output("#{bin}/reoclo --version").strip)
    assert_match(/^0.104.4$/, shell_output("#{bin}/rc --version").strip)
  end
end
