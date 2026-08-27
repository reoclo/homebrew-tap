class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.74.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.74.1/reoclo-darwin-x64"
      sha256 "c613d9cf9ac11ed75d71fbe933f873b374118f5303e7832044106a4288a7c5c6"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.74.1/reoclo-darwin-arm64"
      sha256 "ac4410d249422e621ee6ad62bba59a6e5bff056446be03dfaf6512f0f22099c5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.74.1/reoclo-linux-x64"
      sha256 "7acd44548e7290a933fd5ad40a98b4d62fbc2caa8c1cb938d3452719d221bd9d"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.74.1/reoclo-linux-arm64"
      sha256 "3c35f73f47f4d9a9da9cb4a1fdb51e6762604aa96a2494524df4ba1b72cca93a"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.74.1$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
