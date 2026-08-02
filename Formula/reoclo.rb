class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.62.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.62.0/reoclo-darwin-x64"
      sha256 "64abe526886d20488b2093c32f35d951278504e3968e66f3719af4c2b0b3c164"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.62.0/reoclo-darwin-arm64"
      sha256 "c0d1c5d0487e558336fd82aaaefe09949259aab4c0a36c6c34054c918a1cc7d1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.62.0/reoclo-linux-x64"
      sha256 "99b942c6c2329eb4f72c9ebf71600c79de787b3f9fbf690e17ed4c0494236a60"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.62.0/reoclo-linux-arm64"
      sha256 "80575d68c1e1c2214ae583af89feee21ac7cd8af7a1cb5418b84ca0fa70a2ec5"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.62.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
