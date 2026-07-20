class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.57.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.57.2/reoclo-darwin-x64"
      sha256 "215c4d3f9542c8d8feb1f6b539c44b718a628950b8d493882d2a841ce7431d9e"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.57.2/reoclo-darwin-arm64"
      sha256 "d852d2ad0d46334528ed1511d65e94bb98b737f6ada69755c28813df28ea897c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.57.2/reoclo-linux-x64"
      sha256 "ca5f33abbf2580e51b98857d802c6e01737943e4e8208abead192e1a7a7dd08b"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.57.2/reoclo-linux-arm64"
      sha256 "48c10f67a6d10c294d6fa9ada2af52729bc1e2e886231f3b0ed965e8fda9f92d"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.57.2$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
