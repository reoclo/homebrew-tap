class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.43.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.43.0/reoclo-darwin-x64"
      sha256 "b812a1ff5bf8ca0175c3eec9d8947104ec58bce9ed9608354e5ff56c886f4cc4"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.43.0/reoclo-darwin-arm64"
      sha256 "a49bf17ce7eae9e1a95603df77d12290d70b872f00bb25d82232ae9c706aa5e4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.43.0/reoclo-linux-x64"
      sha256 "c2a01fc71bb99ee014764d40c612090c9e514df4f6d751fba7831d677e7712ae"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.43.0/reoclo-linux-arm64"
      sha256 "63c6db6c3156d4b10bc93b20c10c65fd7371dd85c521f90e704fc0f0f923d26b"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.43.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
