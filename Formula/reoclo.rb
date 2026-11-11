class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.104.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.104.2/reoclo-darwin-x64"
      sha256 "076abf8a996de346628727e5ac25e53d5971dce07aae8f55da9a131ed7e40663"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.104.2/reoclo-darwin-arm64"
      sha256 "193675317f0c6293b588dd1f3e38e911489ba5af46e4e67f7aa47856a71665ef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.104.2/reoclo-linux-x64"
      sha256 "c0d0a4e5f221a2ed9caa5986f10d4a938ab8412062dfd4e48f50f2315c6d29ea"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.104.2/reoclo-linux-arm64"
      sha256 "c8b76fc27bc1ffb920e2f192b5941eae250d83152b6fc3a17803c03684ee2b56"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.104.2$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
