class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.113.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.113.0/reoclo-darwin-x64"
      sha256 "595879cff9388b50f8287a453e97a5c69639bb95d8554d50563a6cb41c286a6d"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.113.0/reoclo-darwin-arm64"
      sha256 "873ecedc7c3a83803ed5883782a28f40b0d0920fdd72662f421bf15518e828a9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.113.0/reoclo-linux-x64"
      sha256 "ca15214121e1bc371dd4212b37f2554ab03234d4e98cb5afb16b0d4a94d37f13"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.113.0/reoclo-linux-arm64"
      sha256 "d8b0b84c229bbb852bd5d3be82afc27d5c41d262b2446cd3be4cb85d71faeeeb"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
    bin.install_symlink "reoclo" => "rc"
  end

  test do
    assert_match(/^0.113.0$/, shell_output("#{bin}/reoclo --version").strip)
    assert_match(/^0.113.0$/, shell_output("#{bin}/rc --version").strip)
  end
end
