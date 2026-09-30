class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.87.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.87.0/reoclo-darwin-x64"
      sha256 "1a67b9306fae198d654a0c4b3071e998c5ca190a161b1bae414ffe0765016cce"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.87.0/reoclo-darwin-arm64"
      sha256 "9a9b76fce1514e21841f65c936c8066f1b1c2e32dd4a8b4fd3b8a5957c91a778"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.87.0/reoclo-linux-x64"
      sha256 "dcd27f874bfe36af316f60e0e17bbf6a1e817b326862120a7093ab5709e135be"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.87.0/reoclo-linux-arm64"
      sha256 "bbd745b2b29bcc87f24fd679e18ee71cbe849ebe6919376ec937a2b87550e1ed"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.87.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
