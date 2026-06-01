class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.38.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.38.0/reoclo-darwin-x64"
      sha256 "a70c414322919bac39003161fa789046680ae8a560e378891b8aa16252128937"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.38.0/reoclo-darwin-arm64"
      sha256 "5dbb62a4ffccc6903cd9d9522f45c1b519af288839f282e01abfe65b57f673fe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.38.0/reoclo-linux-x64"
      sha256 "9d5bbb503e26c29f0d786c04b34a9199f805a5215cce4e81e4b1370600b412c5"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.38.0/reoclo-linux-arm64"
      sha256 "75b0d2cce3bf798a887089f93c0b4f15d8dab3ae2865440637391cecb9c65657"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.38.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
