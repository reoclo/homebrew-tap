class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.64.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.64.1/reoclo-darwin-x64"
      sha256 "946fdeb5bd5525b8e9d32c163fd3108e00e9a704a2a7f17d3ed50582ec56c90a"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.64.1/reoclo-darwin-arm64"
      sha256 "f02d0d7ab9fc3c2b79c47a568877277c84b173359599b7db6b6cbe05fa898b15"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.64.1/reoclo-linux-x64"
      sha256 "0aa1bd5e2f91cc60dc3e1f18231c4fe161a28f4ca46deea37dd5875a4221fcec"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.64.1/reoclo-linux-arm64"
      sha256 "0945783fbfed39c3cde99bb783364e107eb45b673f5de9c5df389f2f7b69e4b0"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.64.1$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
