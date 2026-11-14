class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.110.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.110.0/reoclo-darwin-x64"
      sha256 "5304c1b6b7de772ff8d388c2f8f3920ea7b22bd5456492e5b88281f698818fb9"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.110.0/reoclo-darwin-arm64"
      sha256 "9df9e2a9b5578d560e125dd5f29bda1ada15eb4101010fb02d50011e658cb852"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.110.0/reoclo-linux-x64"
      sha256 "73d37984dbb2896987c008621ab77881337428e5fcf33a790a85f530e9cb21f1"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.110.0/reoclo-linux-arm64"
      sha256 "4b07d3c1a0864ed4851a2ef992222e574f99b3fcacb1261517fdd10a298ac1aa"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
    bin.install_symlink "reoclo" => "rc"
  end

  test do
    assert_match(/^0.110.0$/, shell_output("#{bin}/reoclo --version").strip)
    assert_match(/^0.110.0$/, shell_output("#{bin}/rc --version").strip)
  end
end
