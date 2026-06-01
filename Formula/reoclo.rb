class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.38.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.38.1/reoclo-darwin-x64"
      sha256 "5c10bd93fc469ffb7d43cbb4d62b3c1b0c8f6a670a9b3ee5d6f19783895f44a9"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.38.1/reoclo-darwin-arm64"
      sha256 "d3307e7f777efcfed91d4816eb3ab6dcded89c3ff5da1dfaa8ae88e9af804fb3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.38.1/reoclo-linux-x64"
      sha256 "aff6bab751c6593b087b175dee8830ab215d4377eefe4d966d28dcfa40c641bc"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.38.1/reoclo-linux-arm64"
      sha256 "2c941582760e3f97112f4d64ddda5dba79f48d21786ca84d7cdc88dc21538fd8"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.38.1$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
