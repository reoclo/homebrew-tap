class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.104.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.104.5/reoclo-darwin-x64"
      sha256 "db681b10f82c069637ef104a810023d19e26cb773409c519d824a3a7acec510f"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.104.5/reoclo-darwin-arm64"
      sha256 "43e7abaa64c22700d52e45efe4db1b969cca2a992b6761dfe39d3e58c6238b88"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.104.5/reoclo-linux-x64"
      sha256 "7552a45a39bef29455fd1c3cd564cbc20d23a95768f548772bc9e46568e67c2b"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.104.5/reoclo-linux-arm64"
      sha256 "c1295d507fb8e4d52812d97b20c05d3e96675a422b832ef4e389006fc1285f2a"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
    bin.install_symlink "reoclo" => "rc"
  end

  test do
    assert_match(/^0.104.5$/, shell_output("#{bin}/reoclo --version").strip)
    assert_match(/^0.104.5$/, shell_output("#{bin}/rc --version").strip)
  end
end
