class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.114.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.114.2/reoclo-darwin-x64"
      sha256 "885791f93b4bd79ae673f0c11bf4fa19c9795cbc361e139ec70671e10ee273e1"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.114.2/reoclo-darwin-arm64"
      sha256 "4f76d8b61ae32ee69afaff596fe3549df9105055c2d84693b125d0ba3a1122b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.114.2/reoclo-linux-x64"
      sha256 "4966ee017a1378c1b89679ea6b350794895dcf18d3865b8d6831e7702ec06842"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.114.2/reoclo-linux-arm64"
      sha256 "9861b12306c552b999921c267240f5359f805e2b5950a9d7611787a9ae16b26f"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
    bin.install_symlink "reoclo" => "rc"
  end

  test do
    assert_match(/^0.114.2$/, shell_output("#{bin}/reoclo --version").strip)
    assert_match(/^0.114.2$/, shell_output("#{bin}/rc --version").strip)
  end
end
