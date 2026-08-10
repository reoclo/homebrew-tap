class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.68.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.68.0/reoclo-darwin-x64"
      sha256 "43356c9b5a38cb70cb6eba6ab02715611460feceb89122aad94c5b96cf8c97b1"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.68.0/reoclo-darwin-arm64"
      sha256 "d8e5fed6a828bae109576033b6b293ca1b26634c948cdf97c5b5eca5c7e07842"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.68.0/reoclo-linux-x64"
      sha256 "4c2b9589c1ab7f61885583ddc4390e2abd3e8365107d260c120cf869ad969ab3"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.68.0/reoclo-linux-arm64"
      sha256 "748a72e9cdc716ab8180d1d289f9acf88cb7ff940e4bde46a58ac81054e19c72"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.68.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
