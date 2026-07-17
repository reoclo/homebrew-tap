class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.56.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.56.0/reoclo-darwin-x64"
      sha256 "01b549a2a8096f7264f62c99592d7f1afcc72bd6b7309009527902af474abcc8"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.56.0/reoclo-darwin-arm64"
      sha256 "28b9ebf9617bb7d21d4eb69197d9d8060ae4f3c226fbcf81b29ba3ee3f36cb8d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.56.0/reoclo-linux-x64"
      sha256 "84d40f5749da31d6267ea3a07dea842010d37ca16766070cd1d07ef7c0367c15"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.56.0/reoclo-linux-arm64"
      sha256 "74a0e0ad7864342370434946ab79e28c56f5779b3192e9ee7d3857379c6e9b00"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.56.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
