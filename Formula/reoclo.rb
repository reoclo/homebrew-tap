class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.36.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.36.2/reoclo-darwin-x64"
      sha256 "89a3b7e0ea9b5d7214c70043b980fde0cf5e4d31d3f3c98a76de4d3dfadaf008"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.36.2/reoclo-darwin-arm64"
      sha256 "846d905bb4fa5987235fcba4e21f91c8977961dbffb53fd99875fbb54a7b1514"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.36.2/reoclo-linux-x64"
      sha256 "76e2df786aaf9951c249ae1264cd3350063f1365aae90fe9db5b89976540180a"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.36.2/reoclo-linux-arm64"
      sha256 "f3971526d243b7b0fdec123fa748f9dc0c738251297371fd48312b0221830995"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.36.2$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
