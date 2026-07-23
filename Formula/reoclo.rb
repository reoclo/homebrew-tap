class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.57.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.57.4/reoclo-darwin-x64"
      sha256 "3e37b23e040e5e307299036b96a3abc4265565416d6ecb172317e93ad7c99a58"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.57.4/reoclo-darwin-arm64"
      sha256 "15411b3161d740e191275cf01357436fca5005808e018a7c01c2c02f46fa0425"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.57.4/reoclo-linux-x64"
      sha256 "cd5f9d2397df65f78beda3c86411b906bddc772a263d2a73e6bd4bfa6b5edd64"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.57.4/reoclo-linux-arm64"
      sha256 "b8eeb6b5718c315f3cf2b692f246da67371f024ca3b09f5a7c83991023ee8f3d"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.57.4$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
