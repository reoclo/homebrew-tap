class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.94.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.94.0/reoclo-darwin-x64"
      sha256 "e6ae35be216eede44fa2887e199f3ae1fa42e13dd60f4d07710b2d5709f6d19c"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.94.0/reoclo-darwin-arm64"
      sha256 "3c2359b296fafdd7a7520f6f132d843426e96dadb3481b98e859e2e596217861"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.94.0/reoclo-linux-x64"
      sha256 "d34daa677508b6d8898015017af1268e898801f713d03a211593f69988385863"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.94.0/reoclo-linux-arm64"
      sha256 "4114cadb5fb2ce33ff3473b6e499b60554e93444eec2cb3b2fc7436a54ef61af"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.94.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
