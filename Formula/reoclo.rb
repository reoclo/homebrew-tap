class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.51.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.51.0/reoclo-darwin-x64"
      sha256 "99d754e106c49bb58c040ef2d4d452437df1734e5eca647901f9b253a337b04c"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.51.0/reoclo-darwin-arm64"
      sha256 "e1f12e69d7f53b875d041a79f138664a13774a76096db6d8bc4df5f3cd50d6f6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.51.0/reoclo-linux-x64"
      sha256 "fccd3fed0022f81921f7d83b1d14ddeb036122d2d7f8bf649cb3a2df73667281"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.51.0/reoclo-linux-arm64"
      sha256 "e5c27e622de099b5695ba9d3cb0ed0b6554d4e5c952d22146cde24189691aeed"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.51.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
