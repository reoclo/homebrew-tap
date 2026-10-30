class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.93.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.93.0/reoclo-darwin-x64"
      sha256 "b60465dee7d888ffac95ca271f512121a3d2bd54ae457da433c52e8afd250ae4"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.93.0/reoclo-darwin-arm64"
      sha256 "a77e65b3cf4c4d8025bea075af5012355c69cf9c0b1515d485394f59c287322d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.93.0/reoclo-linux-x64"
      sha256 "f8c31cf9bfc8859504e6062feb971af93cc88129b968d0e5c6ab35c47ab6bbae"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.93.0/reoclo-linux-arm64"
      sha256 "0771d3e9c3842cb71d2ea6eedd77486edb97f7b344551be85d42cd1289cdf559"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.93.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
