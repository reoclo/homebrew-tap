class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.40.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.40.0/reoclo-darwin-x64"
      sha256 "c69c40c9c8166f736882b1b881a04c29522b571e837024fc7a8b36cb0876c94e"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.40.0/reoclo-darwin-arm64"
      sha256 "b6fc93de657eea494bb364e4572078a0db3eccbd18954b142052970fd45e7140"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.40.0/reoclo-linux-x64"
      sha256 "eb2749edfdcbeb8f85bd92c80f4ccd8abcd14d69337330c5006624376b9f495f"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.40.0/reoclo-linux-arm64"
      sha256 "8344190277b59f3cdea876fb2b9bf68d6e5e9bb6c749caea95838bb13ae9eda6"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.40.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
