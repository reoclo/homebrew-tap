class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.97.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.97.1/reoclo-darwin-x64"
      sha256 "e7387a7ad256b4be428bac3cddc97e952834cf893d1ff10ee8ae8ffd8b86076c"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.97.1/reoclo-darwin-arm64"
      sha256 "927eb81a3b253e9e192661f0b6e1abd49a32ab48b3bcc8dccbaf0d243155c21f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.97.1/reoclo-linux-x64"
      sha256 "706387ba0bde3c04518f221745864cadf875b59d35c80c13e88b566000c23928"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.97.1/reoclo-linux-arm64"
      sha256 "0b3861031f58e8fc7992f4039ebe68502de61d1b7529f234710b794064a137fc"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.97.1$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
