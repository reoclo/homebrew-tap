class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.106.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.106.0/reoclo-darwin-x64"
      sha256 "c186b75d8e87f53fe48377578aafe069e0be0e54449ef6679c38e2bb1d824a64"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.106.0/reoclo-darwin-arm64"
      sha256 "97d05b553a6bac40ac38f3e562693317df41d2e40dac47822bdcdbd9f0748670"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.106.0/reoclo-linux-x64"
      sha256 "0a307f6cc2b5813b2f2b2fc91142a20bbc37aa13c1515de3ccf656d768c0c8da"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.106.0/reoclo-linux-arm64"
      sha256 "a70ed02940afb9a8d354fb4798243d96adb9bcb736cf942740244a0496d7b328"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
    bin.install_symlink "reoclo" => "rc"
  end

  test do
    assert_match(/^0.106.0$/, shell_output("#{bin}/reoclo --version").strip)
    assert_match(/^0.106.0$/, shell_output("#{bin}/rc --version").strip)
  end
end
