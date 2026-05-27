class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.37.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.37.0/reoclo-darwin-x64"
      sha256 "ec1a54a47c14b9d37a707864748a02978f9e31c8592d0bf3d1032bdcd3be4ed1"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.37.0/reoclo-darwin-arm64"
      sha256 "effe9c4c0f56567bdd90dbbab6b46e22f7afef2d97c55913631ae6d62e781280"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.37.0/reoclo-linux-x64"
      sha256 "1ee84041cd3a9ea95e4ce94407ac4c8b1733c12c5dba17260d0675b988263dac"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.37.0/reoclo-linux-arm64"
      sha256 "03a0d835a87d40f5c07c4e82aae2d49a3d342a70f55057cf41720c074363e687"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.37.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
