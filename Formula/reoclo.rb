class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.99.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.99.1/reoclo-darwin-x64"
      sha256 "2fd006450b2f8b7316f84829c305fa093e8ae3190a4df6b3bc99a93f21af52ed"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.99.1/reoclo-darwin-arm64"
      sha256 "f0e7f5c86a1412da1bebe56eaa439c023f7cb23d0c669b290c7f7dc7715fb7f2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.99.1/reoclo-linux-x64"
      sha256 "5809a6f02a18a4317afce2a79903e9f9a450ac369ca0985bccaa31a864d2a2ba"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.99.1/reoclo-linux-arm64"
      sha256 "bfaf80611fed7bb44ba5858ef7af25f9cb024af73f05d53a94cbb686cc028361"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.99.1$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
