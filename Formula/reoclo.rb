class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.76.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.76.0/reoclo-darwin-x64"
      sha256 "c5f9f6aa7b7811f9ac36a85660fc440effaf574a87f6502d78701635e92a6121"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.76.0/reoclo-darwin-arm64"
      sha256 "ae6cfc934f89b7bca87a1e684b382a93b9b8e5159c199c399cf37c8e44f93f10"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.76.0/reoclo-linux-x64"
      sha256 "df32d72c69678db90653dce05335b657009761527b604aed3859c6e9346b3896"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.76.0/reoclo-linux-arm64"
      sha256 "eb43507e5b355e035944fa00a4443a4fb1e5cacb3b17cf43c5f742b84140dc2b"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.76.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
