class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.83.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.83.0/reoclo-darwin-x64"
      sha256 "5b2d9ed0f80433bfcbf6c3bf79c19918323c4e023fcdf82100d3129c9b85ff88"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.83.0/reoclo-darwin-arm64"
      sha256 "50ba3ddb1398cac0e5afc6b5eaf783fb3d98adf70a0ebc3d456d3cd6cf63e5b3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.83.0/reoclo-linux-x64"
      sha256 "94257f61cc278dbede98d6bbb122380bb5b07b34c250bae8050c85a287b36b1b"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.83.0/reoclo-linux-arm64"
      sha256 "d19abeabd321757cea1cfcb68f6672bd9e64dcf7e22cfa24e0fabb2c95d45418"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.83.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
