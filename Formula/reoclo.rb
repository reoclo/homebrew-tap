class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.114.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.114.0/reoclo-darwin-x64"
      sha256 "98486de2596575b18c15624798c6d6b236d2b759d3427aceae7fdfab337fe8e0"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.114.0/reoclo-darwin-arm64"
      sha256 "bceebc8a87b78dd910a4d69ce074744ab97cbbe63d03177c2fb27ef8a5568212"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.114.0/reoclo-linux-x64"
      sha256 "685bb3e2e2d0ea1198ecfcf8bf73a503684732d5df27d130c39ea153ef983337"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.114.0/reoclo-linux-arm64"
      sha256 "a698185b6677d6c75ee97b566a9e07859743ff8c7ebdda903f7efaf7718cea55"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
    bin.install_symlink "reoclo" => "rc"
  end

  test do
    assert_match(/^0.114.0$/, shell_output("#{bin}/reoclo --version").strip)
    assert_match(/^0.114.0$/, shell_output("#{bin}/rc --version").strip)
  end
end
