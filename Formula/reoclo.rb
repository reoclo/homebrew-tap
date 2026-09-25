class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.85.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.85.1/reoclo-darwin-x64"
      sha256 "02b2653f194bfc00e83a10ce4ac23830992ecda92676ad201d3dd5b26fc94347"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.85.1/reoclo-darwin-arm64"
      sha256 "633154474213113ab74ef660df92aeb8602d222b13866dc49e00c6ebfa7324ed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.85.1/reoclo-linux-x64"
      sha256 "2919c62200fe12c86ce2709bf6fc08650953b1fc48880e375bdf627671632714"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.85.1/reoclo-linux-arm64"
      sha256 "1c37551fa01e7a5796e54849479d620e910cda7da4144291c555d26256c4b695"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.85.1$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
