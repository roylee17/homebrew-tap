class Teleprompt < Formula
  desc "CLI tool for managing and syncing Claude Code configurations across computers"
  homepage "https://github.com/roylee17/teleprompt"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.3.0/release-darwin-arm64.tar.gz"
      sha256 "9c47a6ad3788a40d380ec5d48a5ed7badc6c7403f7ce5f1e34fe9c39a8bc919d"

      def install
        bin.install "teleprompt-darwin-arm64" => "teleprompt"
      end
    end

    on_intel do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.3.0/release-darwin-amd64.tar.gz"
      sha256 "ae8709858668c0c92e14308f5f10c1b7c21cc751260c25b12e5f59c95d116673"

      def install
        bin.install "teleprompt-darwin-amd64" => "teleprompt"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.3.0/release-linux-amd64.tar.gz"
      sha256 "7800abf0eb97f214563c32e2d0016e53dbbdcba022de9483f4a794df2b6d15c7"

      def install
        bin.install "teleprompt-linux-amd64" => "teleprompt"
      end
    end

    on_arm do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.3.0/release-linux-arm64.tar.gz"
      sha256 "c01712f761527275542b4a2e469e8343805faf4e221105b817a1649f8e7cc577"

      def install
        bin.install "teleprompt-linux-arm64" => "teleprompt"
      end
    end
  end

  test do
    assert_match "teleprompt", shell_output("#{bin}/teleprompt version")
  end
end
