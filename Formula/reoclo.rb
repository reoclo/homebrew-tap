class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.36.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.36.1/reoclo-darwin-x64"
      sha256 "a41eb4181dc26499b4898c1df52873460560c2ee85ff1e8a52913f73dde82154"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.36.1/reoclo-darwin-arm64"
      sha256 "5d3c710f1a97707408b43552e78fc1aaa7ea8a3187b43e55774918c6ec8d99da"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.36.1/reoclo-linux-x64"
      sha256 "8564879edaad341afbf1b839f7811d135091451065795762afb9910ad6fe9409"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.36.1/reoclo-linux-arm64"
      sha256 "015e57cba5c79ce7f075b0c8d7d2653b95448017eafd6961f404e383d6f82456"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.36.1$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
