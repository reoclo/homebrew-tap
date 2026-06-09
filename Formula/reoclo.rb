class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.46.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.46.0/reoclo-darwin-x64"
      sha256 "ae77f49ac2bead489d5b7bd25cbaccb89271da4a6c54451fafb47dd24224f8ea"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.46.0/reoclo-darwin-arm64"
      sha256 "246d122f315cf2aa65a0d9245cd82fc1fe934b17b49e9582edf9c3523a9955d7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.46.0/reoclo-linux-x64"
      sha256 "3507e96219a8ea982a29e02e930daa4c0644654dca80d05ccedff6812c2d5b6e"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.46.0/reoclo-linux-arm64"
      sha256 "8dd819cdc9df6830d9decdce457a996f0c54a7700a19575566112162b64a4d49"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.46.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
