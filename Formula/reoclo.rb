class Reoclo < Formula
  desc "Reoclo CLI"
  homepage "https://reoclo.com"
  version "0.54.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.54.0/reoclo-darwin-x64"
      sha256 "d9afc29ff23a10427a17bc5722a31b4ce0aec076dcd890841b825ac70ae5aa95"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.54.0/reoclo-darwin-arm64"
      sha256 "27e99093a2f494b50f14fea5811a14366056a4e77f77e564e6f9c480818cf51f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reoclo/cli/releases/download/v0.54.0/reoclo-linux-x64"
      sha256 "46617a08ad03595befdc2bf888967b1e91a122dbdfc2143fba644d3aebe9b3b5"
    end
    on_arm do
      url "https://github.com/reoclo/cli/releases/download/v0.54.0/reoclo-linux-arm64"
      sha256 "7aedeba09eeb52eb092a3468f797b18fb00a5e5fcddee373918edc11b288d8ad"
    end
  end

  def install
    bin.install Dir["reoclo-*"].first => "reoclo"
  end

  test do
    assert_match(/^0.54.0$/, shell_output("#{bin}/reoclo --version").strip)
  end
end
