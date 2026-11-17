class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.114.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.114.1/reoclo-darwin-x64"
      sha256 "2cc861add3c4e1bee9f857a3024a70ee30c155940b280b7673de41ea3a263c8e"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.114.1/reoclo-darwin-arm64"
      sha256 "96a73c4b3aeea777793400457d1d77e7fbcffce31f135bca695835ff68b1bcdf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.114.1/reoclo-linux-x64"
      sha256 "c0ba9df8a91556d1dc75abe15b00ac8e5be901c7571fda008c93ae402b115dcf"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.114.1/reoclo-linux-arm64"
      sha256 "351aa4499e2dcddcc67c545c3d2fb222918f5cc31e4d1304c6a294a373994c55"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
    bin.install_symlink "reoclo" => "rc"
  end

  test do
    assert_match(/^0.114.1$/, shell_output("#{bin}/reoclo --version").strip)
    assert_match(/^0.114.1$/, shell_output("#{bin}/rc --version").strip)
  end
end
