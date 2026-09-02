class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.79.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.79.0/reoclo-darwin-x64"
      sha256 "ffd7ff06a94edf2a6c44e2d336ca6a6d381b56a99c7f95cc4aa141dcbd1cc859"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.79.0/reoclo-darwin-arm64"
      sha256 "b6b7c97db7bedcc065bef880bc3733aba157e6430feec49413cc0c9aed39d392"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.79.0/reoclo-linux-x64"
      sha256 "9a3d29ca771d8882873cff1cf3c6a5ab399819ce36f0d34a1528981bb255802d"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.79.0/reoclo-linux-arm64"
      sha256 "b57e5fe9acd25324ac990e9342f14683a5f2342dedc7fa2969d359aa7d93a6de"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.79.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
