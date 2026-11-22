class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.121.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.121.0/reoclo-darwin-x64"
      sha256 "b3ea5f573afe6eaf761bf8cbe304766a450d76610c7d091657b6a2c0adef3ed9"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.121.0/reoclo-darwin-arm64"
      sha256 "a39dc9a15e45b0ac6c91f5d1309f2f1cd7ff03b534878f59cfd48242f59f0ab8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.121.0/reoclo-linux-x64"
      sha256 "83fa1db59925627ebd0149762f42a116f6d51f2842e60ea6db0c0db4cbbdb7eb"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.121.0/reoclo-linux-arm64"
      sha256 "6d748a7456e44c1d6540e9f05d4cd5effbd29f7adce74eb6a2a9180478420d7d"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
    bin.install_symlink "reoclo" => "rc"
  end

  test do
    assert_match(/^0.121.0$/, shell_output("#{bin}/reoclo --version").strip)
    assert_match(/^0.121.0$/, shell_output("#{bin}/rc --version").strip)
  end
end
