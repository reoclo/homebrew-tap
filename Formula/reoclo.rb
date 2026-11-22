class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.120.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.120.0/reoclo-darwin-x64"
      sha256 "d73ade0d920d2bb60f40fb014b6d5399bb501bb4e3f8c1be75aeab9130fc6dab"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.120.0/reoclo-darwin-arm64"
      sha256 "f2f2165362731cd31795748ddd7e1078466674af7e659b5859c464af6c9bf857"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.120.0/reoclo-linux-x64"
      sha256 "52d7290dec55e5c21a3045b8a1914464db2f9fb8127428c76bbc4ef13f2369cc"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.120.0/reoclo-linux-arm64"
      sha256 "eac9c0b697cc326cf78eaae9b19ab9ddb9e1186fdf478bedfe6f5e19bfec85c8"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
    bin.install_symlink "reoclo" => "rc"
  end

  test do
    assert_match(/^0.120.0$/, shell_output("#{bin}/reoclo --version").strip)
    assert_match(/^0.120.0$/, shell_output("#{bin}/rc --version").strip)
  end
end
