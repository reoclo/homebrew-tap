class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.98.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.98.0/reoclo-darwin-x64"
      sha256 "28b9ef37e6a7d871418a29af352ae6cd7d676742acc62438fc39be8a4cf974d6"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.98.0/reoclo-darwin-arm64"
      sha256 "efb4fd2f8b14c246a9a3c622dded305b8b1a76742d46e6c1248d2d2b4a03dc7c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.98.0/reoclo-linux-x64"
      sha256 "a961bc8d86939696108cc243e86bb47fa26986801a497a18218b9ca0f8051ce1"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.98.0/reoclo-linux-arm64"
      sha256 "b5a3a64e1e20d11112bc36f1f16f51a174600a728634d65011d8e08d6dd324f5"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.98.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
