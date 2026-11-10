class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.104.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.104.0/reoclo-darwin-x64"
      sha256 "350c6fed9f59f948bcaa3d67c79646368488fe2e290dfe77b54b07c97cc42470"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.104.0/reoclo-darwin-arm64"
      sha256 "0f9fed140e188139a40222688e29cf12c925e87174f3a703a69c323014163830"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.104.0/reoclo-linux-x64"
      sha256 "5add4f94be394bd2a8988882aeca16ff5eccd4d6de4a1a446833124383f41a9d"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.104.0/reoclo-linux-arm64"
      sha256 "5baabe4a0261f33156aabdf901e4e2efe8175d01fc5f5a9403a2cbe91989091e"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.104.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
