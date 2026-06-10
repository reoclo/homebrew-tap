class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.47.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.47.1/reoclo-darwin-x64"
      sha256 "f9ca7108e06a7dc6e64eabab4b3a05c8b4c885dfe0e45b357b2acafa12f7c095"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.47.1/reoclo-darwin-arm64"
      sha256 "b10888391c530614fe5cb7408ca1f9c5fd5801bb46be4b2ae67e3622ac88103f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.47.1/reoclo-linux-x64"
      sha256 "acb76f7af532448a78bb8aa342005d50d47f18bcf88781e65db4883597acc831"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.47.1/reoclo-linux-arm64"
      sha256 "1f446dfdd8cb7cffdfa3303bb031b2c546fe805ad178c185f7ebe2f54fb1f32a"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.47.1$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
