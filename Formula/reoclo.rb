class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.33.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.33.2/reoclo-darwin-x64"
      sha256 "099897716914ce4050aee3f12f430808e2b05fd1601f0388f309acf36f0d3c85"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.33.2/reoclo-darwin-arm64"
      sha256 "b92d355ddd97bc6f3e0678d457866502582b4089faa9a770e580ebc15555d0d5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.33.2/reoclo-linux-x64"
      sha256 "06b3a20d2403e0e4e88399d4cb89532f5d4c526a7f6ff431be7e7928ef6d9e0f"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.33.2/reoclo-linux-arm64"
      sha256 "906d45f382ef795e9a196b018bd128dad4144412e747752cb3194db8ff064b8c"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.33.2$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
