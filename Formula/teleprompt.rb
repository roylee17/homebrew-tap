class Teleprompt < Formula
  desc "CLI tool for managing and syncing Claude Code configurations across computers"
  homepage "https://github.com/roylee17/teleprompt"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.4.2/release-darwin-arm64.tar.gz"
      sha256 "eabe1c20d98db087489dc08ec4fa9d6f51e351446aca546df52a49e3d0eec109"

      def install
        bin.install "teleprompt-darwin-arm64" => "teleprompt"
      end
    end

    on_intel do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.4.2/release-darwin-amd64.tar.gz"
      sha256 "9f954497bdf653cfc372d05fc534af1efb1d64a97986837b9a3c86b515f0fbb9"

      def install
        bin.install "teleprompt-darwin-amd64" => "teleprompt"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.4.2/release-linux-amd64.tar.gz"
      sha256 "9f8a3a42a155a0620d9be8a5f0305da114fc7b15827764382420093bd799034b"

      def install
        bin.install "teleprompt-linux-amd64" => "teleprompt"
      end
    end

    on_arm do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.4.2/release-linux-arm64.tar.gz"
      sha256 "9efd43734b6a02b919aa62140fdeb2fa2219914a03774236e4438c1322b0b0d5"

      def install
        bin.install "teleprompt-linux-arm64" => "teleprompt"
      end
    end
  end

  test do
    assert_match "teleprompt", shell_output("#{bin}/teleprompt version")
  end
end
