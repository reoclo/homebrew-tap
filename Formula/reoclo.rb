class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.57.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.57.0/reoclo-darwin-x64"
      sha256 "32d8c40eaa2b021d70587a3cfdb13b0b36a29125bcc53883d210ef2885310249"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.57.0/reoclo-darwin-arm64"
      sha256 "cdaf033c789e66091f0a884c32181bb9875fb053f7d4661e7e7cc346849a4924"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.57.0/reoclo-linux-x64"
      sha256 "82777ee5ddcce96783c580f827639f03d2c7f50a85e9e46bcd0f8eea022a8132"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.57.0/reoclo-linux-arm64"
      sha256 "027fa85252d9e572341916a6ae78ce63458294fcaab218811d1ba8e6bdd11bb5"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.57.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
