class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.89.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.89.0/reoclo-darwin-x64"
      sha256 "cabbe4d1d9b95554d5c9775eaeb293fc0c397643631100e14ca10864dc562716"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.89.0/reoclo-darwin-arm64"
      sha256 "b39bc6f76a3d6037a78610f187ee075b2a1874b65ca079f6d2f5f39c24113004"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.89.0/reoclo-linux-x64"
      sha256 "8d8639dadeadcd3aa1d8ca3d9e15e798e73ae7f3a47f1929f223240cf4281ecf"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.89.0/reoclo-linux-arm64"
      sha256 "12af337aa3e68abc2bbcc8d198069fe7fe36d20195c1b11241da6ab11303c851"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.89.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
