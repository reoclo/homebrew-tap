class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.44.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.44.2/reoclo-darwin-x64"
      sha256 "e6448af458a4e470ec3f6e71308980984f9a1341d167c8f3258e50e390ca759b"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.44.2/reoclo-darwin-arm64"
      sha256 "b4252d2af99bb0402cfdd614337880536d6e9a239e407ab152ebfaf1c65b1ede"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.44.2/reoclo-linux-x64"
      sha256 "50a4dcb114efa9881812413682eb7bd78a4eff1a5e8380990a54a8c96c7fdb66"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.44.2/reoclo-linux-arm64"
      sha256 "953df7c95e12979123d96e6c76126c18c1fda9ae60ed08200b1683500b2d249b"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.44.2$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
