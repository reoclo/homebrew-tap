class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.95.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.95.0/reoclo-darwin-x64"
      sha256 "77841a1b8aea94dacfaf2c37595f82c6d6e03f2c05e1f6bb22fd44e65b1fb5eb"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.95.0/reoclo-darwin-arm64"
      sha256 "2575da4416663e83abbcdcda2bcde7d38d0587ff405d6c4837e7883743c7e1c8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.95.0/reoclo-linux-x64"
      sha256 "35412efc3ebc8953d68dff7bbc3c49c9ae0ad53597513a3147af01f685f29b34"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.95.0/reoclo-linux-arm64"
      sha256 "b95e12a369dfd5a7e477ac46d039fb46b472faf1f950c68e2f314cef4495fc82"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.95.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
