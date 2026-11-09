class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.102.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.102.0/reoclo-darwin-x64"
      sha256 "5ed1904fcc6c3b8886c6dd8928767f10aab82039c4e52d1716c877f160b3104d"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.102.0/reoclo-darwin-arm64"
      sha256 "2099e0fbb9019486ae5973f81565e741db39d8eba6284d50b5aa664a55d68bd3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.102.0/reoclo-linux-x64"
      sha256 "33f9ee1c0c729b981192bdd15f33f8c531bb2bfcc27692f8edd52078505320e3"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.102.0/reoclo-linux-arm64"
      sha256 "eab99d686bbd6291d06e18b69930b0866f7db6d285d99487a6e00e3cb622137d"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.102.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
