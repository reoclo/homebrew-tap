class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.98.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.98.1/reoclo-darwin-x64"
      sha256 "62ee3ec22f13fd31dff86b70d4c288f223b4804487c9c9a16dd9cdfbc3618ff0"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.98.1/reoclo-darwin-arm64"
      sha256 "21390d5e7018e89d9bc46cbcf3ce690bd076e3c7f664b3d31521cc2cc4a5ed46"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.98.1/reoclo-linux-x64"
      sha256 "4f942d1220f5cd5a4d495924d834cae86e08833d10bae1cddeb4c9f0adaa662e"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.98.1/reoclo-linux-arm64"
      sha256 "0fd35445fdc47cc49f5309f309779744b1287e369d257d143077263706aa2ba1"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.98.1$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
