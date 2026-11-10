class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.103.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.103.1/reoclo-darwin-x64"
      sha256 "3d84cca6824bf4bf1b20ea62af9458d5f1968c0a1fe8ca30749377a2a9cd705e"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.103.1/reoclo-darwin-arm64"
      sha256 "020d22acb6b9cab6d65b24cddeab58903f81dd8b95bb87d5db3cd366ee599020"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.103.1/reoclo-linux-x64"
      sha256 "a011dcb137a57311bcfb1ffde80e86b679c6f72a3f8b82890698eb3333f1592a"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.103.1/reoclo-linux-arm64"
      sha256 "2efdd36b18dd481cc573cb1c1ab6861e9bf9d2078be235e16585cd4011e7efe0"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.103.1$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
