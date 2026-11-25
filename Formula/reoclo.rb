class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.123.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.123.0/reoclo-darwin-x64"
      sha256 "ac0a1e4aab3833cf129637c2498f41cf01f432dcd908af1b49f024924ffdb860"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.123.0/reoclo-darwin-arm64"
      sha256 "9ec9b6f19e225d2c46471ba4df2206502ca0f50e74142663c9d60d64cf9146ab"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.123.0/reoclo-linux-x64"
      sha256 "65f6b0a5dd0acbd859db291f4de06cce824ae7dc4be95160066aa1343dee97a7"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.123.0/reoclo-linux-arm64"
      sha256 "4365a850388e45bd3800d6e1c13fa86c2b6aaba2028a9a47346dd7676a744e77"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
    bin.install_symlink "reoclo" => "rc"
  end

  test do
    assert_match(/^0.123.0$/, shell_output("#{bin}/reoclo --version").strip)
    assert_match(/^0.123.0$/, shell_output("#{bin}/rc --version").strip)
  end
end
