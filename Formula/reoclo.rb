class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.41.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.41.0/reoclo-darwin-x64"
      sha256 "d7b9defd6f44d800352bd891f05a000d898b86e19d7a3373f354bb0ad92010d6"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.41.0/reoclo-darwin-arm64"
      sha256 "a0f586605e5d3bab16c46dc3b00e16923b8338b37fff61b9508a4107acb70d50"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.41.0/reoclo-linux-x64"
      sha256 "5026c67018994ca87fe404607e13fd4992e81f59f1a3ddea637949fd2f2b061e"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.41.0/reoclo-linux-arm64"
      sha256 "083266da6b72543ab041050294e2231465c003d8f152798348907b580b16a826"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.41.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
