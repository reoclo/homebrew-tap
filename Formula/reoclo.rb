class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.74.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.74.0/reoclo-darwin-x64"
      sha256 "15a0c6996962b258957ffc86554340014203f9bff6e4a9eb739c7c88ed57fceb"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.74.0/reoclo-darwin-arm64"
      sha256 "dbbc6a65139e5d00c9e780c93b092338b0cc7e29264361282e711375ac5726e6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.74.0/reoclo-linux-x64"
      sha256 "51ada4718b40e84a6fc6c2d7e719c393e8e358555e5b56102b0def188b4a3e0b"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.74.0/reoclo-linux-arm64"
      sha256 "46091695658ef01f4d36b23cd35ca428521e800a1bc232ffb21f7d20bb8a5930"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.74.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
