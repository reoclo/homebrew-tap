class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.88.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.88.0/reoclo-darwin-x64"
      sha256 "7224eb90e34c471186a1882d6068e7174c3147c6b48b81d66b05a2a65f6a1451"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.88.0/reoclo-darwin-arm64"
      sha256 "e76d773d3ba7c242e185dca5c19fa50bcd99fb4f74eea408e61f8fe5b8794973"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.88.0/reoclo-linux-x64"
      sha256 "a525d969ba4ba417fd6d667191eb38152cc57b4e02555aa9465d33d1366cc8d4"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.88.0/reoclo-linux-arm64"
      sha256 "63a90ae8424fe9ff36b7c3e2c83bd70252e28c18c498f96e7ab24c3983a24108"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.88.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
