class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.37.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.37.2/reoclo-darwin-x64"
      sha256 "dbd7a3f314f3b3ce54df3e57a26fcaac32ba1bb80872ec9f76d4a0663d158bfb"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.37.2/reoclo-darwin-arm64"
      sha256 "f073ca7ba3a73d325c56928bb7893e1f57c58393a430a47bd3d049e8bbf3edf3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.37.2/reoclo-linux-x64"
      sha256 "992b1b640728c90d3a181167a4170c386853afe1355ef6a024c97f220cd05096"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.37.2/reoclo-linux-arm64"
      sha256 "a959dd4c986348cd7f804e5fc5969a9b3114dbb848dbf251fda6bcf0c9f52a58"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.37.2$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
