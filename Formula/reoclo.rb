class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.107.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.107.0/reoclo-darwin-x64"
      sha256 "4dc7e8db1e98c3e55f8726687480fbd356cb99e8f09b26a14f486016cedd7a2d"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.107.0/reoclo-darwin-arm64"
      sha256 "b705ac0ba72b414b23577f10da200c2f8227561cda0bd1f07e452bf7125c1dba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.107.0/reoclo-linux-x64"
      sha256 "36f7db6b8a9258ee1df0bb206ac8ce7088d81c5be2bcb5743124c71bf3f618fc"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.107.0/reoclo-linux-arm64"
      sha256 "5950624abb4923294710a2e6b51fa50abf45c37a80663ef1c97742cb13b7cae9"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
    bin.install_symlink "reoclo" => "rc"
  end

  test do
    assert_match(/^0.107.0$/, shell_output("#{bin}/reoclo --version").strip)
    assert_match(/^0.107.0$/, shell_output("#{bin}/rc --version").strip)
  end
end
