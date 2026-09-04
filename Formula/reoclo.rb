class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.81.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.81.0/reoclo-darwin-x64"
      sha256 "41e867d1cee810c6b038efbe07a9c666e17dad7e2dad42472ab8ad8f1b29a553"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.81.0/reoclo-darwin-arm64"
      sha256 "b608c9f0c4570d03513fdfad55b62d8d74c1d0b3cd578d454b5509b3009a1bd1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.81.0/reoclo-linux-x64"
      sha256 "1fb2df9678b64907ba0afc6a570202a2381b0f6ad58c904857c2b2c71bc7da58"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.81.0/reoclo-linux-arm64"
      sha256 "b665f85f351a0f592f9df631ec4bf6d8fc19fd5a62394733ac3947c8ed8bb7bd"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.81.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
