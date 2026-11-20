class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.118.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.118.1/reoclo-darwin-x64"
      sha256 "8ab66ad11e70adb5df48a8e9018229f0ddd445f843e53fa3e1b3df822e7fe261"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.118.1/reoclo-darwin-arm64"
      sha256 "c097ffd97cdb9bc86200492b3ac05ecf43fda60ba09ff0178b9c0f32c1b44d9d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.118.1/reoclo-linux-x64"
      sha256 "f123663a712eccf006d7b40812f5230ed7351ce3bc71a482a31e68ba6ed7c0df"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.118.1/reoclo-linux-arm64"
      sha256 "62c7d16e9c67ef13f81de40da1e294d3c200fe29024dd4240f7bf63ebc6bc0b0"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
    bin.install_symlink "reoclo" => "rc"
  end

  test do
    assert_match(/^0.118.1$/, shell_output("#{bin}/reoclo --version").strip)
    assert_match(/^0.118.1$/, shell_output("#{bin}/rc --version").strip)
  end
end
