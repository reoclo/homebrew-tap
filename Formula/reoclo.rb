class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.108.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.108.0/reoclo-darwin-x64"
      sha256 "83ae9213aa857b71d4d0d11a0430d36e2cd2cd561607732b50405a83941a252c"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.108.0/reoclo-darwin-arm64"
      sha256 "2bb87e00585e35e2056b7c6bccca5db5abf8861b5b700e4844e51b2bf4809180"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.108.0/reoclo-linux-x64"
      sha256 "4ac01d297be50640cd81975cb731d6f4f786beab8f0d30553bfc8d7255a20768"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.108.0/reoclo-linux-arm64"
      sha256 "564f6a043c092dab620b767c074483e77e90d3eee0a09445b6be48f5babec851"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
    bin.install_symlink "reoclo" => "rc"
  end

  test do
    assert_match(/^0.108.0$/, shell_output("#{bin}/reoclo --version").strip)
    assert_match(/^0.108.0$/, shell_output("#{bin}/rc --version").strip)
  end
end
