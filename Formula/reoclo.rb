class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.71.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.71.0/reoclo-darwin-x64"
      sha256 "f3ec978e10d6b9b3dfdccba87a29f5879304e11831d019d2519753bf1aabe238"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.71.0/reoclo-darwin-arm64"
      sha256 "8963412968da8ee7ea53e9ad61d0565e7fa2aa3488304f126c307ed3b8a202cb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.71.0/reoclo-linux-x64"
      sha256 "935a58838c9ec2432164172d30855aa397f73d9bf8caf2dbb49549016d64fa69"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.71.0/reoclo-linux-arm64"
      sha256 "93ca768d3d96a703103413b40fd333f6bdd33f817016147568be12ce11f0c598"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.71.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
