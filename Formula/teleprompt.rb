class Teleprompt < Formula
  desc "CLI tool for managing and syncing Claude Code configurations across computers"
  homepage "https://github.com/roylee17/teleprompt"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.3.0/release-darwin-arm64.tar.gz"
      sha256 "b4259aa5020edd99c2c4ebe794fb59b7f981e27bc73841d17c92341d60807410"

      def install
        bin.install "teleprompt-darwin-arm64" => "teleprompt"
      end
    end

    on_intel do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.3.0/release-darwin-amd64.tar.gz"
      sha256 "962920eb3eac6dcaaeffc17dd6ef18d6fa94a9c989fa2c7480f7b20fc92dce15"

      def install
        bin.install "teleprompt-darwin-amd64" => "teleprompt"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.3.0/release-linux-amd64.tar.gz"
      sha256 "69ae6ab00085c815394433dd82350e02dfbae2585ae2c75672992ec6c0c4abf9"

      def install
        bin.install "teleprompt-linux-amd64" => "teleprompt"
      end
    end

    on_arm do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.3.0/release-linux-arm64.tar.gz"
      sha256 "fc388426fa0a21b80a0095cbdf2f24e281d6bb5e6195eaaa5ceda27e1a2f063d"

      def install
        bin.install "teleprompt-linux-arm64" => "teleprompt"
      end
    end
  end

  test do
    assert_match "teleprompt", shell_output("#{bin}/teleprompt version")
  end
end
