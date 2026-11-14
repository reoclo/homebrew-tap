class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.109.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.109.0/reoclo-darwin-x64"
      sha256 "e083899ad8156106e7c0a4ad25edf4a265c85771b5dbf87611342916c1c1e60a"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.109.0/reoclo-darwin-arm64"
      sha256 "dc19976bfd0ec75c0bb1798321f7f9d9ef0dc1f8575e3da644448c9b7cbb97f5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.109.0/reoclo-linux-x64"
      sha256 "7317b54d3ed5be15435e2f0af71b21b5f8bd404afc0bd64e049692d5df8cab47"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.109.0/reoclo-linux-arm64"
      sha256 "f1beb67ed7fc44822e6d6fc2cb44742904f351df337747534c66ed439eb20dbd"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
    bin.install_symlink "reoclo" => "rc"
  end

  test do
    assert_match(/^0.109.0$/, shell_output("#{bin}/reoclo --version").strip)
    assert_match(/^0.109.0$/, shell_output("#{bin}/rc --version").strip)
  end
end
