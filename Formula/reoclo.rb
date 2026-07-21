class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.57.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.57.3/reoclo-darwin-x64"
      sha256 "58c4574d94b08134c34567e6ecc423dfe6a949ab065442ff0b18c31fdc604dd3"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.57.3/reoclo-darwin-arm64"
      sha256 "ee923d433cfb7e72464a7109b8c5fd9ab22d10b994a6497bbddda9dfcd66f184"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.57.3/reoclo-linux-x64"
      sha256 "b8837749a5d8a4adcc13ab41bab31522c2667cdeb907c0009e6341b2e41662f0"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.57.3/reoclo-linux-arm64"
      sha256 "937005d4105ffe3eb1bc0d17b24e518733e8e18eba4e2a668b048dff5e499912"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.57.3$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
