class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.104.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.104.6/reoclo-darwin-x64"
      sha256 "1396311848ceacd45ba6f3ca70ece9aac41bc9671c2035a13199f8fb07e92543"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.104.6/reoclo-darwin-arm64"
      sha256 "34a729d87fdbf8f00389d3bf858f6a62ecc608320aa5e77e4ca281f64a50f70c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.104.6/reoclo-linux-x64"
      sha256 "af8229716ff0ef4c52a6ce94a1503990a76118d79a4f14b284ccc9086ffb2a04"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.104.6/reoclo-linux-arm64"
      sha256 "ce428bf5673a8eddead9fd4867bd10f5b0a1c9c4a4eefe89f3892b1cbf7c1204"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
    bin.install_symlink "reoclo" => "rc"
  end

  test do
    assert_match(/^0.104.6$/, shell_output("#{bin}/reoclo --version").strip)
    assert_match(/^0.104.6$/, shell_output("#{bin}/rc --version").strip)
  end
end
