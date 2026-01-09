class Teleprompt < Formula
  desc "CLI tool for managing and syncing Claude Code configurations across computers"
  homepage "https://github.com/roylee17/teleprompt"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.1.0/release-darwin-arm64.tar.gz"
      sha256 "44e523083eeea60db2c4c0c8d43fb63707812c321390e235edcbe3496931fe8f"

      def install
        bin.install "teleprompt-darwin-arm64" => "teleprompt"
      end
    end

    on_intel do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.1.0/release-darwin-amd64.tar.gz"
      sha256 "7af0a06d8e8bcdd592bf258b1b1d4c23dcb66b4b7ca584ac3030631c6739717b"

      def install
        bin.install "teleprompt-darwin-amd64" => "teleprompt"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.1.0/release-linux-amd64.tar.gz"
      sha256 "27069d2752785e0acc311edb2c7c5791e58f6bb83a4fef358d629057c685fef1"

      def install
        bin.install "teleprompt-linux-amd64" => "teleprompt"
      end
    end

    on_arm do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.1.0/release-linux-arm64.tar.gz"
      sha256 "b7f139b299781e053933f8b1feda2c3320a5bb5b9c4b42ef610f299339ade0e4"

      def install
        bin.install "teleprompt-linux-arm64" => "teleprompt"
      end
    end
  end

  test do
    assert_match "teleprompt", shell_output("#{bin}/teleprompt version")
  end
end
