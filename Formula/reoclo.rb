class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.80.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.80.0/reoclo-darwin-x64"
      sha256 "02224188bb78e1d988877cdc3f16b5dea4bd12f308e876f576dd1f749a0a8cff"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.80.0/reoclo-darwin-arm64"
      sha256 "304f45fae0d06481ebb72764af45f02f418c922b11785972ea20dd9754435332"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.80.0/reoclo-linux-x64"
      sha256 "00b9792c65baf7e64ca2c664da65f7320b51f5f5e78b2b83738c511932f09dfb"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.80.0/reoclo-linux-arm64"
      sha256 "87a20713803868ecbc1f72d93537bd165c1d2e393af6cc681ad0fc21e9f4d6ce"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.80.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
