class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.37.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.37.3/reoclo-darwin-x64"
      sha256 "1b8b9aec0ddafd63632fd31bb546e2a01a035aabfc14e40e190ee09fed185a95"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.37.3/reoclo-darwin-arm64"
      sha256 "717cb3a4f4e8d407d446a7575a880a3ae5bd29d66a6a2a9015994fc206cb3fba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.37.3/reoclo-linux-x64"
      sha256 "af73a0b29953dcfcb665c2491a42c18d2c146bdd78883c3b1c762e636b475274"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.37.3/reoclo-linux-arm64"
      sha256 "22b9d87db9fb3230ed481bfbfbdf93444518f5453fbe62ccc5df14dd6225ce59"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.37.3$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
