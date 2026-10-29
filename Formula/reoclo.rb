class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.92.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.92.0/reoclo-darwin-x64"
      sha256 "ce20bd615acee1f7be2327083804dedf91ee08cf490cd7029f7247951f7e7c74"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.92.0/reoclo-darwin-arm64"
      sha256 "57cd7c89e9d29e3656f5fa71623a3967c061fe3305812de5c07058d4bbf17b0e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.92.0/reoclo-linux-x64"
      sha256 "e5237b3850b5b266e3aa0eabefef37ac5d76e88497c9fe1e319abfae572da512"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.92.0/reoclo-linux-arm64"
      sha256 "19ee981d0e775dc2b79cd7e8dcd5aad5b810de3c3acf222c0f1c916b24765004"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.92.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
