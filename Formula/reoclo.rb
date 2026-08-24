class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.72.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.72.0/reoclo-darwin-x64"
      sha256 "b32dc19ec9f872f8178d34421b6cbe8420d06f67499e7da1c3762daee91ec52a"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.72.0/reoclo-darwin-arm64"
      sha256 "fa80e6f86739204c49f460f0d12fcfb7c06ec401b805b791a749c3146c940f00"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.72.0/reoclo-linux-x64"
      sha256 "7e4dc440c879aec06fa154029bb6ab39e2ed6f793036058e2e8dbd9ea0492180"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.72.0/reoclo-linux-arm64"
      sha256 "0fd9f97ff15ba7409297db83ca833c43b9051e43e04c1820850ce587c2258b80"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.72.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
