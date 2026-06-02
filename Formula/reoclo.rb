class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.39.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.39.1/reoclo-darwin-x64"
      sha256 "46a6f2f7fbd384e25a33c73718a67d3a6a991400bedccbb919656e33c701bf50"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.39.1/reoclo-darwin-arm64"
      sha256 "ed8b689cf8236dd7a641994e054cca8ab1612cd4c0b207e1f1a5c4de56e9af47"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.39.1/reoclo-linux-x64"
      sha256 "4b9ff127285c02d9f62743215b4cf996e004ae3614ac480e59b3b5c4712ff250"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.39.1/reoclo-linux-arm64"
      sha256 "cb1a06edd4c9dfb08240433fbaf019e2d1bf2334a4b6934579ed31aa52baadfb"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.39.1$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
