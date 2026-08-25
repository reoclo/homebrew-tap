class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.73.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.73.0/reoclo-darwin-x64"
      sha256 "d115f88ea3676772843c0d9e73c49452eb101e08bb6739c3b8cdeac715ff80aa"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.73.0/reoclo-darwin-arm64"
      sha256 "6c51e45d58b9fcbcea0ffce7bf34ba177d55a96e8246f8c31474ee8551d393f2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.73.0/reoclo-linux-x64"
      sha256 "ae49998f6a6ab6da18ef20a8d24111898f2773c8f27a04d65a05b83bf6a50aad"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.73.0/reoclo-linux-arm64"
      sha256 "f5a7f6bc2a1bd88fef5f295239289162a61baf6fc9dc1a943488f4e30d441d64"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.73.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
