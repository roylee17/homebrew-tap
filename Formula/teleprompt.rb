class Teleprompt < Formula
  desc "CLI tool for managing and syncing Claude Code configurations across computers"
  homepage "https://github.com/roylee17/teleprompt"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.4.3/release-darwin-arm64.tar.gz"
      sha256 "0b9a320fe90dce9cb4dfaead39920d9b3c2aa289e6383da0afe8d0db69052090"

      def install
        bin.install "teleprompt-darwin-arm64" => "teleprompt"
      end
    end

    on_intel do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.4.3/release-darwin-amd64.tar.gz"
      sha256 "5d3ef283ce3288ac758bd791bbedfe47ef803e48692a7c4ab55b013163831cee"

      def install
        bin.install "teleprompt-darwin-amd64" => "teleprompt"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.4.3/release-linux-amd64.tar.gz"
      sha256 "48590edad1fa610a0da6277143e69f70863c36593a9c0059a7cbd109b57fde68"

      def install
        bin.install "teleprompt-linux-amd64" => "teleprompt"
      end
    end

    on_arm do
      url "https://github.com/roylee17/teleprompt/releases/download/v0.4.3/release-linux-arm64.tar.gz"
      sha256 "d90491212ef3966060a357a511c2046c9fc313c4dd7d92be898565f2f3007f36"

      def install
        bin.install "teleprompt-linux-arm64" => "teleprompt"
      end
    end
  end

  test do
    assert_match "teleprompt", shell_output("#{bin}/teleprompt version")
  end
end
