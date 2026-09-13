class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.85.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.85.0/reoclo-darwin-x64"
      sha256 "dbb2f131b0a515ad3316b010b99c16e4e8f0ab49f62fd20f8218a97cb1a8e166"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.85.0/reoclo-darwin-arm64"
      sha256 "a630d579497bb9af05cce8f6efee8fddebd8c8ab7e49110d74eb4e4db96151a0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.85.0/reoclo-linux-x64"
      sha256 "9c15e4847bf4e4406c7a88b6b9dd60b204b395250992cf6a29cdd35315b4bf24"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.85.0/reoclo-linux-arm64"
      sha256 "8c5d1452c5149775fc3d8f85ca81cb5d540bc3b6f09ab321f1e67a606b4dbd09"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.85.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
