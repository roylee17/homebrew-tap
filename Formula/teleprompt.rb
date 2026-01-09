class Teleprompt < Formula
  desc "CLI tool for managing and syncing Claude Code configurations across computers"
  homepage "https://github.com/roylee17/teleprompt"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.2.1/release-darwin-arm64.tar.gz"
      sha256 "de22db3f0f902b4ce0c4d3365dc4ae9e19a41e3c90010872bf48eafa2a2c275a"

      def install
        bin.install "teleprompt-darwin-arm64" => "teleprompt"
      end
    end

    on_intel do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.2.1/release-darwin-amd64.tar.gz"
      sha256 "7064a8ab4fbe144dd9bb1dda8dde25d2f77b34f2dcea59d6116807294017e13d"

      def install
        bin.install "teleprompt-darwin-amd64" => "teleprompt"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.2.1/release-linux-amd64.tar.gz"
      sha256 "cc3be7e150a3592ae2131cd73820b3d1e6b92b9c99f4c32a7066076f96e38fdc"

      def install
        bin.install "teleprompt-linux-amd64" => "teleprompt"
      end
    end

    on_arm do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.2.1/release-linux-arm64.tar.gz"
      sha256 "71425156497670d6dceb3f280869117a9102748137ea63302c8bea6c23ae93f4"

      def install
        bin.install "teleprompt-linux-arm64" => "teleprompt"
      end
    end
  end

  test do
    assert_match "teleprompt", shell_output("#{bin}/teleprompt version")
  end
end
