class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.37.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.37.1/reoclo-darwin-x64"
      sha256 "86c2f06c68d4909d43e3ef3979bccf09723b5ccd87f8dce5ced72dd605f6a7d3"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.37.1/reoclo-darwin-arm64"
      sha256 "07c685f5ad9ffe8aa7311e0dce43bb99158fbcd3fcdd9b412c52684ac2497277"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.37.1/reoclo-linux-x64"
      sha256 "4352fb4229f0f5ee7f332cd37d1aa11d12e8c465a9eeac017d3def9b24bcde81"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.37.1/reoclo-linux-arm64"
      sha256 "912433a405ddc0641fb8429314b39f90e33993dcaa53156de2cdc4bc52e9d9d8"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.37.1$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
