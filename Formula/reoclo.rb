class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.114.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.114.3/reoclo-darwin-x64"
      sha256 "3fe0573fff600529410961e5e430b9e771daa8f8788533616e4d8619b1c1185c"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.114.3/reoclo-darwin-arm64"
      sha256 "802eb8bb6c226a31c61b4d008a4dabc6b0d0563ae95bc07aee3c3eeb37423be3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.114.3/reoclo-linux-x64"
      sha256 "86acb22907332a2c0bb488fa38d50bee2b77b2d68aa4e2c43ebb9a5b75dd0c95"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.114.3/reoclo-linux-arm64"
      sha256 "a4cdc6f97a359a55d54f5ee8e463b98b7bdc326d4f36d324857aaef6fc8f6856"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
    bin.install_symlink "reoclo" => "rc"
  end

  test do
    assert_match(/^0.114.3$/, shell_output("#{bin}/reoclo --version").strip)
    assert_match(/^0.114.3$/, shell_output("#{bin}/rc --version").strip)
  end
end
