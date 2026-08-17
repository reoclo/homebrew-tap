class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.70.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.70.0/reoclo-darwin-x64"
      sha256 "07d1951591e16c4bfa8d7e282a237c169911d2cedc0bbae6fc02dce0487a1797"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.70.0/reoclo-darwin-arm64"
      sha256 "1ce8170edc3d8850b296ae98ec37fb95c708ed0d1628a7c8988b5e31870ba316"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.70.0/reoclo-linux-x64"
      sha256 "6b0fb537c922541d59307cde8633467e9e645761045077b51522eb952fc233a9"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.70.0/reoclo-linux-arm64"
      sha256 "590f487c23bf85bc3b2b55a3a4c2031548c24c5aa0fb36097d6cdc5d5d2b0335"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.70.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
