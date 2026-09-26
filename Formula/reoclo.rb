class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.86.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.86.0/reoclo-darwin-x64"
      sha256 "3417f710d41a730b4f70aa9164cf4ecd94c34a3bd569a93b35bbd523900b45b4"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.86.0/reoclo-darwin-arm64"
      sha256 "39419899ec13b82b2c345a65fa0ad20a01fe3561c726d9c46c06455131f70955"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.86.0/reoclo-linux-x64"
      sha256 "04693025f9aa710234a97cc5d755f53882495b117242c9631ecdef4b27859925"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.86.0/reoclo-linux-arm64"
      sha256 "c3b55e0deb2d7829fe65e68b1352ecd5d330db8892e74c5b030affdac857018c"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.86.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
