class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.91.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.91.0/reoclo-darwin-x64"
      sha256 "d97577743c16a9075b7738244cbaa0e41502a56f77b3f904d59bb69377d95de8"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.91.0/reoclo-darwin-arm64"
      sha256 "13e80a388197716eb6dd554c6ad8f8decbecd0c9f634521d87e68aec9c21cd9c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.91.0/reoclo-linux-x64"
      sha256 "b09d1c02f3d1f97284ab7a8fd2b717269517341b64981214cc4a7192ce9391f0"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.91.0/reoclo-linux-arm64"
      sha256 "8e3e3e19f0f86153da41c0f78e3ab4ec304c52673eeba805278e2cbacc1b2f40"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.91.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
