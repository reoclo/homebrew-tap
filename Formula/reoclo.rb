class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.65.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.65.0/reoclo-darwin-x64"
      sha256 "793dee61f44caa2b91834fd789692bb5cd6525c03a8ae1cd05254bd01e1e55c9"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.65.0/reoclo-darwin-arm64"
      sha256 "ead5e77d8abfef5de5c36250876f851ca388ae83fd692b785054c51905e27acc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.65.0/reoclo-linux-x64"
      sha256 "5c76a5c500f64ed075d9c293eaf3fbebfa44c8ff8c5191de96362e2ef72a94f8"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.65.0/reoclo-linux-arm64"
      sha256 "5d239ea9d0a84560889eaed028034f988ba25550d69d8be0e8819e52d0b3175f"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.65.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
