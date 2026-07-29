class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.58.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.58.0/reoclo-darwin-x64"
      sha256 "fcb6ed9cf024e3703eee7b3a617524d400854548434d7425acb28516c70197d4"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.58.0/reoclo-darwin-arm64"
      sha256 "dd95b98b5335c8e26d643c112b839ad02802164eb71f6882033f917b65719e9d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.58.0/reoclo-linux-x64"
      sha256 "1d6b552b969ceb4a3308728ee8a9fd33dffaf9bb501640c4cb9989e5d470263e"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.58.0/reoclo-linux-arm64"
      sha256 "0dd65ba09eb5f4ab81ee1c92c2e4b8d9529a6635dda6b8cd76126d394b47d7d8"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.58.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
