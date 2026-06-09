class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.45.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.45.0/reoclo-darwin-x64"
      sha256 "6e7a3050809dce497e80f4bb1dcc536407ce9cdaf5b8fb4f03427bc975cb5dcf"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.45.0/reoclo-darwin-arm64"
      sha256 "28800ea87266614f35119a0c4fedccf518c69d4bd11b94146e15af4c91a53f16"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.45.0/reoclo-linux-x64"
      sha256 "8556da187aef1c62ae278888667b09ea6e09f6f3abf6cbea5ec9ad26a4e590a3"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.45.0/reoclo-linux-arm64"
      sha256 "15c621a42e531690d8e073bbecbec144ee8b0ef13e79e50aa73657e81539aed5"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.45.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
