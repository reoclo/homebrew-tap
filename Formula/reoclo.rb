class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.64.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.64.0/reoclo-darwin-x64"
      sha256 "d1ce0b666fe176c296b3909f649f3a3985daa731aefdb3e204e5a7ece2212450"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.64.0/reoclo-darwin-arm64"
      sha256 "04e927505d015f5359947ffc1b48a1840525d5966694dc0229b9122763d6d15f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.64.0/reoclo-linux-x64"
      sha256 "65d7c881480aa7cc3b7f7582fa35529c40617042c7b39341e83849f2af5c25b1"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.64.0/reoclo-linux-arm64"
      sha256 "a2a2c3f393671195b8950d1976e3befedaf8fcbe1ebca91c66431842369c2a06"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.64.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
