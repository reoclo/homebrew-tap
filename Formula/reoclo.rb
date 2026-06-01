class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.39.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.39.0/reoclo-darwin-x64"
      sha256 "a2f6da8583c720fc71ee1452a3b733054dd508a3bba652eb63afdda85b5b221d"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.39.0/reoclo-darwin-arm64"
      sha256 "0185e208945bf947a2f3b12ed3df01a05c79a147e5bcb5b201d1de3f75c784a7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.39.0/reoclo-linux-x64"
      sha256 "fd20a70617ae31cd85245429bf4538401d7e10c19cba59253b5d6a9e62955f09"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.39.0/reoclo-linux-arm64"
      sha256 "fda47e49b2803c3379b3ba3ffc0e60c07bbc3215e723e511ecc036a755c1e480"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.39.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
