class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.116.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.116.1/reoclo-darwin-x64"
      sha256 "7c270e40573be4602a94eea0f8ef8823573026bef54276350aa673bd5465dd7e"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.116.1/reoclo-darwin-arm64"
      sha256 "54861f3252422ea40934e2ba97396756d9576a3341ac37181d538e0ae72515ac"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.116.1/reoclo-linux-x64"
      sha256 "e86d1858d24c4bb390fbc729d532c255da1ff61cc945446bc7a9f45692fb1ab6"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.116.1/reoclo-linux-arm64"
      sha256 "be86049675a6038a1158986de6c134e205e11eac92f2886b83f99ec134b4ac2c"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
    bin.install_symlink "reoclo" => "rc"
  end

  test do
    assert_match(/^0.116.1$/, shell_output("#{bin}/reoclo --version").strip)
    assert_match(/^0.116.1$/, shell_output("#{bin}/rc --version").strip)
  end
end
