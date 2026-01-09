class Teleprompt < Formula
  desc "CLI tool for managing and syncing Claude Code configurations across computers"
  homepage "https://github.com/roylee17/teleprompt"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.2.2/release-darwin-arm64.tar.gz"
      sha256 "ca19e49ddce38d9bcd412adf13a768b92e94534e7fe54954a4cbb690f60d3cc1"

      def install
        bin.install "teleprompt-darwin-arm64" => "teleprompt"
      end
    end

    on_intel do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.2.2/release-darwin-amd64.tar.gz"
      sha256 "b1f90bae7e11973edb8f8d1a84fb058e751ef1969d76ee2a4eb793ef190fc980"

      def install
        bin.install "teleprompt-darwin-amd64" => "teleprompt"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.2.2/release-linux-amd64.tar.gz"
      sha256 "829ae28fdc1776e0b3bd83ba345dbca4106745a9f7d74c70e862696de40dc46d"

      def install
        bin.install "teleprompt-linux-amd64" => "teleprompt"
      end
    end

    on_arm do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.2.2/release-linux-arm64.tar.gz"
      sha256 "f178ed710d027c62318542603202010dfab16760b8965c815e61da5ed6e5d0c0"

      def install
        bin.install "teleprompt-linux-arm64" => "teleprompt"
      end
    end
  end

  test do
    assert_match "teleprompt", shell_output("#{bin}/teleprompt version")
  end
end
