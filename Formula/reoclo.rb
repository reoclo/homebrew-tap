class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.90.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.90.2/reoclo-darwin-x64"
      sha256 "17de73cd60c3019ffde591f422d18360cd241cd74ce9e5585edccd1cfed15b72"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.90.2/reoclo-darwin-arm64"
      sha256 "0fc481bd055f6f15f6ffe962c9523d2fad9c549cabfa47da1c67db33a235e15e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.90.2/reoclo-linux-x64"
      sha256 "92dbf1d59bf656608f4a3eb17b02a701b08d29b76509148bbf143a2a483b343b"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.90.2/reoclo-linux-arm64"
      sha256 "bfc439fd7dce09ddaa59f322ee97bc145e5468aaa45f15593ff7f904fec7b70e"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.90.2$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
