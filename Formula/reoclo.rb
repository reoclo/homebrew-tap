class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.96.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.96.0/reoclo-darwin-x64"
      sha256 "00764b1842b60844668fc01596fe42a0e03dbd33119127b584eb7366ea848c2c"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.96.0/reoclo-darwin-arm64"
      sha256 "348f84b7c789d19a69b14660a6f8c61ddca6f6817f85b6822d35f124fc6403b0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.96.0/reoclo-linux-x64"
      sha256 "52cbe52dc37ecea930537940706475b42139b8d31c317f2ccc5970f56f1e41d8"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.96.0/reoclo-linux-arm64"
      sha256 "c0a192fa8713e3ef2df06522f31f93fae64fb07e489b6f8ea56912a5f11360dd"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.96.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
