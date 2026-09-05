class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.82.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.82.0/reoclo-darwin-x64"
      sha256 "c7b18a419fe9f9b2db7beb12ce603766bf4930e2c898edb2fb4a6c79b1293715"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.82.0/reoclo-darwin-arm64"
      sha256 "f5667370939fe84a8d842f1591689c056d45e6b63f096d25f58d306c8d4002c3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.82.0/reoclo-linux-x64"
      sha256 "0b5addf37004f6349911660f39233363893d9feb01a6884416ab0b56312da341"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.82.0/reoclo-linux-arm64"
      sha256 "6c671de5d0637df2e31780edd20486353fb2dab28dce0ae6695a5b99e0c02970"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.82.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
