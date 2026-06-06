class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.43.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.43.1/reoclo-darwin-x64"
      sha256 "770cc5838475894065873c1a397c857a9292f1af0cd3ca565fe351423be0729d"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.43.1/reoclo-darwin-arm64"
      sha256 "015272ccd0e165ceb7580f4b69b2cc70edbcb6c21850df875b792a4c496a622a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.43.1/reoclo-linux-x64"
      sha256 "37246d180d076045d1daabb07c36dfb86bbcc12ac844ab6d0deb7c3a90aef700"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.43.1/reoclo-linux-arm64"
      sha256 "8e47b7aa31a1d586718c00f51ee752514488240c665a10e10928270074271c89"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.43.1$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
