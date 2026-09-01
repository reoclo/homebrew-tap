class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.77.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.77.0/reoclo-darwin-x64"
      sha256 "04c3e2a67f0850ab9bdf8afe60555e1235ac8a9d698af1efcc6ea8d5b035952b"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.77.0/reoclo-darwin-arm64"
      sha256 "41a92f65f77759e491eef9a187a73d1d3af81f96ef4c3992abe11c45b1206b55"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.77.0/reoclo-linux-x64"
      sha256 "04a3d1c84268b86285742a68d227321ac003186a08b9084258a2ecbf69cd75e2"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.77.0/reoclo-linux-arm64"
      sha256 "f23cd9803bcdbf823a96db4d837fa37864bc89c46e107d71091a7b2574091ebb"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.77.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
