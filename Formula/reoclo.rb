class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.52.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.52.0/reoclo-darwin-x64"
      sha256 "e07077273b62403aacb6de19aaf144eeca662b92b1698d4ba78e60afab34226e"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.52.0/reoclo-darwin-arm64"
      sha256 "8fe0dbf315da70e49a618ae6f6d3c7f4e37b244a64d3fb6068933f215584d06d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.52.0/reoclo-linux-x64"
      sha256 "e3228b5e74b24e6207bdce2085a3c41aea405a40c305abba803165df7e4b9157"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.52.0/reoclo-linux-arm64"
      sha256 "0a2dc8c907fc63acebcfecf87566a55404c5dd4bb58e40c0e35fe99a87da315e"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.52.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
