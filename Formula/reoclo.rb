class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.94.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.94.1/reoclo-darwin-x64"
      sha256 "01f5b4d0f7dfc41a117bbaab6b56c25e7228d4aec4163dc7a92563d491c5ebb5"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.94.1/reoclo-darwin-arm64"
      sha256 "d099a2fc384ab70bccfdbaf0b4860cfe8d31b05e9672ca56e6b219cfe5a43299"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.94.1/reoclo-linux-x64"
      sha256 "d9618d524697a9bb26ede846db110208996d87a77e791f6191f626a9056a2cd5"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.94.1/reoclo-linux-arm64"
      sha256 "57544992be80a121244cbe2e3bfeb28647863b6ae2a730b4fadb25d104a9173f"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.94.1$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
