class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.67.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.67.0/reoclo-darwin-x64"
      sha256 "fa6fce309f086d74a62a00a43c4fe7fd148ebee891510361740e114eeae25016"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.67.0/reoclo-darwin-arm64"
      sha256 "e2c6bc02988d11ebb3d47219ddc06ab58c238b3b0a1fbd718583316646d40ad3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.67.0/reoclo-linux-x64"
      sha256 "08ca8554c8194d1afd0484a5300ce1f15afedd71c69d9266667abaa1ea508c90"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.67.0/reoclo-linux-arm64"
      sha256 "6cfc27d291c82655ff9be54fbe29e2eb7bb54e0b0dba0b748ea1f0bccec56152"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.67.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
