class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.99.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.99.0/reoclo-darwin-x64"
      sha256 "161c5469a81b19fcca3876abbeec93c9f49e77724c911a95868e0781c48df937"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.99.0/reoclo-darwin-arm64"
      sha256 "267589443b6327a5a3e8605dc9cb21783a135c8bf94b1122cc34253f1312c7a3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.99.0/reoclo-linux-x64"
      sha256 "bd126c5d2099b4e2987c6553ba1c8f5f729bdfcc8e425591610b5de9bf362525"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.99.0/reoclo-linux-arm64"
      sha256 "ec9a4bae2dce745dfa9f1c48ced1b9884591c9bb76e6e75d367a145acb110e94"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.99.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
