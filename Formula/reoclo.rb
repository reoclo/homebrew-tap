class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.51.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.51.1/reoclo-darwin-x64"
      sha256 "21f200d00d1d8deaefd6ac96076470a3de4f5dab5eed99804c5bd62b38d98d4d"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.51.1/reoclo-darwin-arm64"
      sha256 "0585b03d09be2022452cca9e3f3b763f989e6a1487ab760982512e07b2f3f2dd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.51.1/reoclo-linux-x64"
      sha256 "1a8b0ae944ef6c3ac8f4897194a775633d6aa9c8b119222f6571c862c88a0ac1"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.51.1/reoclo-linux-arm64"
      sha256 "a05a1eaf90109ae6d816c30687f9a7d2ff6288a8430a74aa4c1f6462eb5b833a"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.51.1$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
