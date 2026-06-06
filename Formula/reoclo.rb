class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.44.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.44.0/reoclo-darwin-x64"
      sha256 "27ecddb1d2f38d7b534d50b8d22d4330b2c979959aa9725fd35ab47f6e24fd56"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.44.0/reoclo-darwin-arm64"
      sha256 "8dda2a8085771fb69bd85eed202be2e9734032d55cadb7539f03a49297a27bce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.44.0/reoclo-linux-x64"
      sha256 "6732a6dfd0bd456065fa81ced9baef377f2a97ccab80d0646f6b55b1dd320409"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.44.0/reoclo-linux-arm64"
      sha256 "a163d09d2188f90acf3140500c8f28e1c77e35fbef5a4b3e2cfa73ef6d741d07"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.44.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
