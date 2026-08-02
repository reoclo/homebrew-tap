class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.61.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.61.2/reoclo-darwin-x64"
      sha256 "7cdbfe3b1ae782040999f48a8985ccc8d250bcc5ed5951953f2496b3ec377e8e"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.61.2/reoclo-darwin-arm64"
      sha256 "df6bfd165a557e90f0e4ebb476a3452fd9303543f5ae1529b238ff81a45114a5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.61.2/reoclo-linux-x64"
      sha256 "debf9b3b91a1c4fdfd54dd3f1863ac2c27a723b1401868a8d8aca272fb8cd328"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.61.2/reoclo-linux-arm64"
      sha256 "03e81eab78cb2fc6d5a5cf0d72750e8d69377a97b64986399a258a8eab7b0339"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.61.2$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
