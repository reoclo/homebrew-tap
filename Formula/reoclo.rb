class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.122.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.122.0/reoclo-darwin-x64"
      sha256 "df7514c79dab34a206b85896c168954969fdaacb1c6de7c96effe6ded375c77b"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.122.0/reoclo-darwin-arm64"
      sha256 "a67f6beeb394ed47c5bf643bf08885b5e4914682dd7cf3def3b6b6e5e35859e8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.122.0/reoclo-linux-x64"
      sha256 "52effbf2568bfb3a0ad575dad53afce7089c53bc10247ea6102cabf02be92b7a"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.122.0/reoclo-linux-arm64"
      sha256 "c7ef23cc366af5a71bb129954e632a90c432529d88d2648cb407a243aaf6206b"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
    bin.install_symlink "reoclo" => "rc"
  end

  test do
    assert_match(/^0.122.0$/, shell_output("#{bin}/reoclo --version").strip)
    assert_match(/^0.122.0$/, shell_output("#{bin}/rc --version").strip)
  end
end
