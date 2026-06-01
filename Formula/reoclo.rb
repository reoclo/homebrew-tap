class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.37.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.37.4/reoclo-darwin-x64"
      sha256 "0e8d90a9fd57708fdd2e55d454c9f441e26b4561737af6cc6401735f16c9f17d"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.37.4/reoclo-darwin-arm64"
      sha256 "ab91c03259fffe948ad8ae22ee6dfee2bd4c6a7f44f3fbbfc71ef9101b95af34"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.37.4/reoclo-linux-x64"
      sha256 "b0021053e556c99984fbe0dcad9960c0580cabeeed7d7d884bac4f9749a6b6c8"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.37.4/reoclo-linux-arm64"
      sha256 "55e4f787d4d6041f62b6e2bd961e4687a74bd2e9b569c3ec8f8b7711f20cfcbb"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.37.4$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
