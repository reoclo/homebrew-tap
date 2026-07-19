class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.57.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.57.1/reoclo-darwin-x64"
      sha256 "814b5d90386c017568b8a5cc160b4793dda0c6016ce978b44b69f3a69079d143"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.57.1/reoclo-darwin-arm64"
      sha256 "df9037cd01b4a82337887d2ca86a72bceeb2c8a587710c3057ac741e0727d8ba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.57.1/reoclo-linux-x64"
      sha256 "8beea435fc44a907c1ac949f45eb68f8f209fd5e5504f044a670641369d29d4c"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.57.1/reoclo-linux-arm64"
      sha256 "9ab752c7d51e304ec6d50ea12f79f5a5675f18592851717fa75a98842fcca2cb"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.57.1$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
