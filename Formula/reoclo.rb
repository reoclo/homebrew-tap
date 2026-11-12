class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.104.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.104.3/reoclo-darwin-x64"
      sha256 "d66559babffd2a79e037084a6901f53d06d72046e5a5603c9d5b0a000466eca4"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.104.3/reoclo-darwin-arm64"
      sha256 "ffe052e4a7596fd1e483bd775de893bac9dabf295a6dbe57a49344bff9a6fb11"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.104.3/reoclo-linux-x64"
      sha256 "562d4f9547436e3d18fad68ce7e908b226277661f8c40ae07cb07f9ff7a489b0"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.104.3/reoclo-linux-arm64"
      sha256 "223a62809d8066252f0abaaa6f2c0246c15af16295f371596e495a6d968083ba"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.104.3$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
