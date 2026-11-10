class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.103.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.103.2/reoclo-darwin-x64"
      sha256 "61e201612fb021b131db172a6286ff7e849bdfd84340ef937e12615d5754d963"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.103.2/reoclo-darwin-arm64"
      sha256 "a35e2a130ad1927cbef59bc99dd72a88f073e31eb82fe7fa65941f292f3a4db2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.103.2/reoclo-linux-x64"
      sha256 "d6c624b86d948d983b7f613d333279fdc961b34952c361e449db7cbc900a0a6b"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.103.2/reoclo-linux-arm64"
      sha256 "5b910674b175b4e06c2dc7379aec176523ecd9cb10526933936c1d3f54da8971"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.103.2$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
