class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.84.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.84.0/reoclo-darwin-x64"
      sha256 "8d7267f7dc129f9f61472dee834af6b9823e3d21be28043dcefbc7462db22004"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.84.0/reoclo-darwin-arm64"
      sha256 "d97851d3f49517b02fec6a6ec599021f8701105b57e8beb4d8bae1d786b46ac3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.84.0/reoclo-linux-x64"
      sha256 "19ff2dfbd61f1a3904d557498f61656ae9bf259a6135428dc63d67a919db31fb"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.84.0/reoclo-linux-arm64"
      sha256 "4e2f42dc96b11308acd22b1628542cb2b8f8d2fa22a1f935869a1c0a7bcdb355"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.84.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
