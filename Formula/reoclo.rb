class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.111.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.111.0/reoclo-darwin-x64"
      sha256 "891ad5289c503810ac3db0fabe1f520049b2c0413bd92c8307462c9692a738f7"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.111.0/reoclo-darwin-arm64"
      sha256 "51028b08840a4cacd84a10472898d9c98ea89dc15a5ee6d0049dc089787b9d10"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.111.0/reoclo-linux-x64"
      sha256 "9c8d0f6d8798083b5ec5ed63ceb40d3b80dbae9e425e036d2d3e841815e56a93"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.111.0/reoclo-linux-arm64"
      sha256 "390bf0d4afa7f39031cddfec7b4833937ffce1c94459d0d857f13811c1245019"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
    bin.install_symlink "reoclo" => "rc"
  end

  test do
    assert_match(/^0.111.0$/, shell_output("#{bin}/reoclo --version").strip)
    assert_match(/^0.111.0$/, shell_output("#{bin}/rc --version").strip)
  end
end
