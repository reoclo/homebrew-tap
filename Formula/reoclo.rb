class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.97.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.97.0/reoclo-darwin-x64"
      sha256 "cdb28fcfb4c000caf8ba32efa50c462128b446a2b17b3daf98dd3e6ab4f7428f"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.97.0/reoclo-darwin-arm64"
      sha256 "a87c785f26ec09581722c274e3adcce824cd8cb0e853905b1e5cc992207c67b3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.97.0/reoclo-linux-x64"
      sha256 "2bbff812e6a73cddb5a293e7e6de60242e9473b330a613381672704e257ee2ed"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.97.0/reoclo-linux-arm64"
      sha256 "1c8b4e345b0239bba33c5b75a8a04e6effd1dcf87baccd4068588372792e0951"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.97.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
