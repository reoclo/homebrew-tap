class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.105.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.105.0/reoclo-darwin-x64"
      sha256 "2dd5f71fd13ce0c1ba4734068d0b1b9530a436ff19c21f92b28751b92a726a6e"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.105.0/reoclo-darwin-arm64"
      sha256 "92ef64e6b0b3f2b7990a66b6a0bc79ecc86824a81fe6d3a9a4f60eead18d8dd3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.105.0/reoclo-linux-x64"
      sha256 "692f812bd91fcb8ffcdee50656e8891e04d4260101e2877484d7c6d674a9e50f"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.105.0/reoclo-linux-arm64"
      sha256 "0bf0c917fdf98562a52f07190fc1baac274abc32314a874eae23797e12e49f4b"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
    bin.install_symlink "reoclo" => "rc"
  end

  test do
    assert_match(/^0.105.0$/, shell_output("#{bin}/reoclo --version").strip)
    assert_match(/^0.105.0$/, shell_output("#{bin}/rc --version").strip)
  end
end
