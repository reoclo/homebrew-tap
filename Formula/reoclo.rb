class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.66.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.66.0/reoclo-darwin-x64"
      sha256 "8562ede2720d4584a186b950c1a8ab2a40caa6062770abf2d95ed73246d25e14"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.66.0/reoclo-darwin-arm64"
      sha256 "81dfce2bc955be93a1d99355574c6e509aeda78b4259bfe3c7550d865dffe501"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.66.0/reoclo-linux-x64"
      sha256 "8db7289fc520098cddca292527c69d591e2d193c858a7d50d0533c0e0b53080e"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.66.0/reoclo-linux-arm64"
      sha256 "88f91bf270d1abc2c8dcfeaf2ea97413d229cb74563cea677c686b495a8b4fa0"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.66.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
