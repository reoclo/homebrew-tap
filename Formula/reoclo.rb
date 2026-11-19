class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.115.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.115.0/reoclo-darwin-x64"
      sha256 "24820a635c01e5cc101119c600f87e8a1930c232394e1c2594ae6f4c97e28e7b"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.115.0/reoclo-darwin-arm64"
      sha256 "ccd02f24a323775c05efa7530c55ae7898d290a5c8e5e4a071457e0f60664b36"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.115.0/reoclo-linux-x64"
      sha256 "26e95a92b1bd5dd927beade0e8ae84975c202b43aef21a40eb6908c73e0c7220"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.115.0/reoclo-linux-arm64"
      sha256 "e469f898c9f0ea1e2aca361ed7b69b5b1d8e89bb7d980361e38f7fd73ab50eb4"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
    bin.install_symlink "reoclo" => "rc"
  end

  test do
    assert_match(/^0.115.0$/, shell_output("#{bin}/reoclo --version").strip)
    assert_match(/^0.115.0$/, shell_output("#{bin}/rc --version").strip)
  end
end
