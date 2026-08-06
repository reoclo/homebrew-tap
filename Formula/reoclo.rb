class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.63.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.63.0/reoclo-darwin-x64"
      sha256 "7f1023eb3f162f2a88e74619069b096556f9c58dc2dc2e380e68a970f575a658"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.63.0/reoclo-darwin-arm64"
      sha256 "a8b685e485d23eb9725367f92a1bb0da5f1eabdaa7b13a5cb0358e161f28d9a2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.63.0/reoclo-linux-x64"
      sha256 "8253030bf2107842c6a9ff596690e7a74a9ac67aee824f48423e51df67d6f1d3"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.63.0/reoclo-linux-arm64"
      sha256 "3837ea2439adf84496444c9304b6ddd2ad2cdccca57cd15505ad06447a2a8540"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.63.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
