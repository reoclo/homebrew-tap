class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.53.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.53.0/reoclo-darwin-x64"
      sha256 "e1744abaf268f97ac478cd8d5f2451c6fd715bbeafafc5cf467f491ea06ba70a"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.53.0/reoclo-darwin-arm64"
      sha256 "1118400259322d9ceb0792a25cf5fb8cbc6087712d04eb942bf31356b6c9c270"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.53.0/reoclo-linux-x64"
      sha256 "195a63514150de8f7e77e7206c7abbe3044906d416439edc49c8610cdd41c647"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.53.0/reoclo-linux-arm64"
      sha256 "f8a876577a4be03d74e9143432728713edd694c5a8e439890057bc5b98d6b295"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.53.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
