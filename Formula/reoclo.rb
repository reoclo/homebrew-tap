class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.44.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.44.3/reoclo-darwin-x64"
      sha256 "cb7bd15a33e835eaa9712d4871943b82a5bd70229d6355f4067a7c6993e1fd3d"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.44.3/reoclo-darwin-arm64"
      sha256 "2b69d3169a52c7a3fb90fea730c3bf5edca0b55a77f13703ba53cc3e0418f014"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.44.3/reoclo-linux-x64"
      sha256 "9919ee4dc3e4ea23dfe13bb7f36fff98a88d7035f62fd0bd19604b56204f679f"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.44.3/reoclo-linux-arm64"
      sha256 "1199d5d66f3e6af690a5bd600ce7070e863858548e27f2937c6f18adeb812464"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.44.3$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
