class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.119.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.119.0/reoclo-darwin-x64"
      sha256 "c4e2bbcfc15ab91ef8b9e98de0d2855d3311ae66b9bc1abc5da60d505f9a8bde"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.119.0/reoclo-darwin-arm64"
      sha256 "da8c88f33de5c9e6863ec27a88b6cb71ee72370f4e5b5e4b111598287c0633f9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.119.0/reoclo-linux-x64"
      sha256 "b4c4b424f42c7bbd7561a73a31b5956227c5b0eb63278a7392b725ccd5ca2772"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.119.0/reoclo-linux-arm64"
      sha256 "96b1dca40be7dd31f1d4f3fc95c6d0a1b525f257befb9b41f7e96a81998fd113"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
    bin.install_symlink "reoclo" => "rc"
  end

  test do
    assert_match(/^0.119.0$/, shell_output("#{bin}/reoclo --version").strip)
    assert_match(/^0.119.0$/, shell_output("#{bin}/rc --version").strip)
  end
end
