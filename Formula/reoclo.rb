class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.101.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.101.0/reoclo-darwin-x64"
      sha256 "4d3db3a9598fb27630a4edbfb829bc9536a53ce308b64abeb2255a150f7caa82"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.101.0/reoclo-darwin-arm64"
      sha256 "f02df2354f2b88325e5cca6125710d3ae173f5a00ce96377a18618607c0c189c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.101.0/reoclo-linux-x64"
      sha256 "86f433805fa6c6e1c5f3f159c38e5b10cf8ea6434a0d14cac0722ddfc94044e3"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.101.0/reoclo-linux-arm64"
      sha256 "2034453e0f744973b88cafc8a5ce1bcd2d93efe13a158a0cb6cbd30e1b8756bc"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.101.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
