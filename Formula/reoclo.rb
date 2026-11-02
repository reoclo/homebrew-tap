class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.93.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.93.1/reoclo-darwin-x64"
      sha256 "4f661da29a215bc21c1b641c904914128bc0cbeb6370c7fb3361569a2b2a6f48"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.93.1/reoclo-darwin-arm64"
      sha256 "e7a39744fb212f8584b8919d69de0eb635089a895fe44a0a5ee62dc03101beda"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.93.1/reoclo-linux-x64"
      sha256 "e6feffe8d00e9d9051e4ebb94d88556ea4393a31f80cff378240f4a1a1c1d2a3"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.93.1/reoclo-linux-arm64"
      sha256 "12189114ec19319f4fda30c3bba48e3e97d3809728a93f77ad18f650e465618d"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.93.1$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
