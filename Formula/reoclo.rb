class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.104.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.104.1/reoclo-darwin-x64"
      sha256 "856f3772626e76123282cd4df774e1f66c6d198203b12258d86eedad833c42a2"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.104.1/reoclo-darwin-arm64"
      sha256 "127b5ff71305e94c1076024e07415ea57d8c1779a4a2003386c956ba76fb72b8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.104.1/reoclo-linux-x64"
      sha256 "361a3e50e4362b1b8faad72604acfac44ced2fcc867ed2bdabd60ce47a79583d"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.104.1/reoclo-linux-arm64"
      sha256 "9797a1987768e4ce2d22350acae6b947c571696baf6719f31ad9c07b3b8b5ce4"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.104.1$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
