class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.55.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.55.0/reoclo-darwin-x64"
      sha256 "43a8168372c3b146de395fa5361836b2bb36508385929d8d91424a75ccc29d69"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.55.0/reoclo-darwin-arm64"
      sha256 "484e68fa0092e63bc3a2053155141b79092896d90f04fbe2528ff7e89480f6fe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.55.0/reoclo-linux-x64"
      sha256 "e7c4ecde03c224868347889026120951bf67e963b2380d4ab896ee1c8ac36d68"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.55.0/reoclo-linux-arm64"
      sha256 "e2c295ac5c926093fec0947b4017479400a545e685c247f915dbfa625005230d"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.55.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
