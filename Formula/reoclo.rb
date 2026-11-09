class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.100.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.100.0/reoclo-darwin-x64"
      sha256 "edfca770aeb0cc5fde1f4bca0da4501e0d0b096de7eb3e9d5d572b501a820eba"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.100.0/reoclo-darwin-arm64"
      sha256 "65382e68bfa5539aa1c0684ada035f989e6dda97124f3060f1415043a95b55ef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.100.0/reoclo-linux-x64"
      sha256 "562659d27579d52e5d030a8b95050732739c126d5cf97c7690bfa247c4b38da9"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.100.0/reoclo-linux-arm64"
      sha256 "2978fe865b20272cea4186d3dc8803e8e21fb55918df3ad1cc0d5d80ef7e9593"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.100.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
