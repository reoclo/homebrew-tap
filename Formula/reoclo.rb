class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.116.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.116.0/reoclo-darwin-x64"
      sha256 "83bb2bf8b3d3438d7062ddc4d4de62f917b572abe631d4f0ae47c33e6eaa45ef"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.116.0/reoclo-darwin-arm64"
      sha256 "e758de5f5ac3ab5e64630e6dd0b6d02330ec4dff67d3fcbad1bc7666f7f6b385"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.116.0/reoclo-linux-x64"
      sha256 "b5bd117701452374d1478fc81475c327947ab81714922f8043279f7893402ad5"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.116.0/reoclo-linux-arm64"
      sha256 "c7ad3705bf6c88693225b7b6d18a1898efce5e2152ebc8c53b1e44d96505fe55"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
    bin.install_symlink "reoclo" => "rc"
  end

  test do
    assert_match(/^0.116.0$/, shell_output("#{bin}/reoclo --version").strip)
    assert_match(/^0.116.0$/, shell_output("#{bin}/rc --version").strip)
  end
end
