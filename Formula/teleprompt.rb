class Teleprompt < Formula
  desc "CLI tool for managing and syncing Claude Code configurations across computers"
  homepage "https://github.com/roylee17/teleprompt"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.2.0/release-darwin-arm64.tar.gz"
      sha256 "bb558436fa1c0b0bd7e6139f62779f0b6860d5c4acbd1e8f5178c1256a7c1324"

      def install
        bin.install "teleprompt-darwin-arm64" => "teleprompt"
      end
    end

    on_intel do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.2.0/release-darwin-amd64.tar.gz"
      sha256 "e98a0cc4a7ea4a331a5523b30aa34abc2d4ac19f48fc2c7f6a87d28f0d727a35"

      def install
        bin.install "teleprompt-darwin-amd64" => "teleprompt"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.2.0/release-linux-amd64.tar.gz"
      sha256 "1d383732c3eabceaabda4cd55fd2f56ff7527ea5241358ffe9a0347b72b3b7a1"

      def install
        bin.install "teleprompt-linux-amd64" => "teleprompt"
      end
    end

    on_arm do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.2.0/release-linux-arm64.tar.gz"
      sha256 "5bd84f434658f6000a85f75c7d7013217056506cafef7c34d59b4d2328e33e79"

      def install
        bin.install "teleprompt-linux-arm64" => "teleprompt"
      end
    end
  end

  test do
    assert_match "teleprompt", shell_output("#{bin}/teleprompt version")
  end
end
