class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.118.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.118.0/reoclo-darwin-x64"
      sha256 "18ba4a7fbe723bc5a715e0b614993a1092cc21aaa59e519d5c8c12d0087a3ec4"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.118.0/reoclo-darwin-arm64"
      sha256 "643948d3b356864e58b67defa0f6b29fa2bf47a4f812aa297cf85b4877d707ff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.118.0/reoclo-linux-x64"
      sha256 "c3bf95866b6d47e997de324364286eef6d87cf8991bfa711590d1a3bef20ad3a"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.118.0/reoclo-linux-arm64"
      sha256 "a23565af7910821cbac47c3a4f2ce30a0cdcf1b618b02b6b1d523e1f8e4a46c8"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
    bin.install_symlink "reoclo" => "rc"
  end

  test do
    assert_match(/^0.118.0$/, shell_output("#{bin}/reoclo --version").strip)
    assert_match(/^0.118.0$/, shell_output("#{bin}/rc --version").strip)
  end
end
