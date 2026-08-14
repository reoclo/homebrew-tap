class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.69.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.69.0/reoclo-darwin-x64"
      sha256 "6d0f468d8b65dc0a6dc5eea5cf25b36710aa6230ea21e26c46add96c232eee05"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.69.0/reoclo-darwin-arm64"
      sha256 "cd88e8fb01def94e238433c82365dcc35df30373fb0658f5013c9d83bc60e451"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.69.0/reoclo-linux-x64"
      sha256 "786f9a255169773cef2ab9577a35ff5c7eb59dd567202c6081b81d420ce44020"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.69.0/reoclo-linux-arm64"
      sha256 "5b9329f39f161b27f313e9622b0d83e465605780abe6b7ec71fb5594afe9bcac"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.69.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
