class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.112.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.112.0/reoclo-darwin-x64"
      sha256 "f85cd3d7de3f75d5807e20f715fdc39a9177978383d64fe4d3d64463d6be8802"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.112.0/reoclo-darwin-arm64"
      sha256 "61704262d4740a559557e5b9def74086f397d96558b67c4514231c607c39d8f0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.112.0/reoclo-linux-x64"
      sha256 "119c6be8bbef64181f249d275805ec6152ee6d5a08ef387edc3e3a74c2f3a504"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.112.0/reoclo-linux-arm64"
      sha256 "f42a5d3491e486d59536cc86a75ca13ce8180615c31e8a1505887c908c94c7ec"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
    bin.install_symlink "reoclo" => "rc"
  end

  test do
    assert_match(/^0.112.0$/, shell_output("#{bin}/reoclo --version").strip)
    assert_match(/^0.112.0$/, shell_output("#{bin}/rc --version").strip)
  end
end
