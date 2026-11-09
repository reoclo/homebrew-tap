class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.103.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.103.0/reoclo-darwin-x64"
      sha256 "91519a7246cb145303a1dd632379d8cc4db490eb1c749bce7cf5022998e871a6"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.103.0/reoclo-darwin-arm64"
      sha256 "7a72a00e8a46b07a029fe6f6b6bbe5079f3b4ff6934f9d29d0f8203644d374da"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.103.0/reoclo-linux-x64"
      sha256 "dba299ec0021dd4329f2dcd1356d84cc84e2df570ffb7743b0b0320d12135d2f"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.103.0/reoclo-linux-arm64"
      sha256 "8a6e2b1e1e73e109bd3d58cdc9bc408e45a54891ce87521d7376ddf4b820dd32"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.103.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
