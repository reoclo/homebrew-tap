class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.44.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.44.1/reoclo-darwin-x64"
      sha256 "4589737a68e80beec07d38bad92026c6e594150be6e910222918c6c4de6f4b4b"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.44.1/reoclo-darwin-arm64"
      sha256 "c297470acc6868bf2ffbd813e1ee345ba61554fcc1c34acf68c1d896dee2affd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.44.1/reoclo-linux-x64"
      sha256 "b08a9d9bdeaca61406aa1b0b8b918e269fb3cde2ce713d63371c49b11cf1179c"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.44.1/reoclo-linux-arm64"
      sha256 "8aec7df74bfcb37e451ecd964ba6872e1ba3a66acb78f5fb3107bea036b6e2fe"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.44.1$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
