class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.117.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.117.0/reoclo-darwin-x64"
      sha256 "d9e98d72eb3b3bf4a800091ad57d02143a672ff93736b158ee54465419ea797d"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.117.0/reoclo-darwin-arm64"
      sha256 "399ea3e7fde3d94290a044c627880a1f09e01fe3797cb67dab67fcfc4b145979"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.117.0/reoclo-linux-x64"
      sha256 "55ffa5add9384daebc64587c29abf8804b707b656cda12468bb578e33939bfb3"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.117.0/reoclo-linux-arm64"
      sha256 "d45789c41b2b3b7de509fe7d8b4b6488748426a8bb7a3702ea2be0c41a231085"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
    bin.install_symlink "reoclo" => "rc"
  end

  test do
    assert_match(/^0.117.0$/, shell_output("#{bin}/reoclo --version").strip)
    assert_match(/^0.117.0$/, shell_output("#{bin}/rc --version").strip)
  end
end
