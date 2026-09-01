class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.78.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.78.0/reoclo-darwin-x64"
      sha256 "4bf79a89428b88bfd6e98bd6912478c9c8d3fc4e7c1dd1704f2f53eff78b07a7"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.78.0/reoclo-darwin-arm64"
      sha256 "bdec3b73bc2bc0e38f1f753a9a00bb4c6173e7c5b266133fa08925f06be94d2d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.78.0/reoclo-linux-x64"
      sha256 "405c4e07fea0f9e6918d24eef6d3270cfe10f8da4ac64fa66498898334eeb572"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.78.0/reoclo-linux-arm64"
      sha256 "25c18656275c9a65d2a62dcd5dedc20a8745f99a3f7c1504e12d8dc5e6acdb8d"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.78.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
