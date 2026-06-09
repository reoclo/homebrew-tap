class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.47.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.47.0/reoclo-darwin-x64"
      sha256 "a7c83501dffdf14887fb116530141b6f2057230f226b218092af877a7c6f373a"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.47.0/reoclo-darwin-arm64"
      sha256 "9dfc554cbfbca78a9045c13b656aaa0a3c4b7754123dd3644c71fb288bc96656"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.47.0/reoclo-linux-x64"
      sha256 "feb92a7c84792acaefc6b6d864b85817b906aed8b10214ffb13159250417a3d5"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.47.0/reoclo-linux-arm64"
      sha256 "8042719fa38caa9ac8b4f0704c6b99969cc921b6fe28df48b4df1c70a56d124f"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.47.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
