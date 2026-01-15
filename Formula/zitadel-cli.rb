class ZitadelCli < Formula
  desc "CLI tool for Zitadel IAM provisioning and management"
  homepage "https://github.com/roylee17/zitadel-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roylee17/zitadel-cli/releases/download/v0.3.0/release-darwin-arm64.tar.gz"
      sha256 "9882882e814877b1a57df6471e99a50427c14e86c50d31e56ff820b00ba7c417"

      def install
        bin.install "zitadel-cli-darwin-arm64" => "zitadel-cli"
      end
    end

    on_intel do
      url "https://github.com/roylee17/zitadel-cli/releases/download/v0.3.0/release-darwin-amd64.tar.gz"
      sha256 "b877c1860596d76cc08bca5fad1b97bfbaa2abbd194ef02772667851c6becbd7"

      def install
        bin.install "zitadel-cli-darwin-amd64" => "zitadel-cli"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/roylee17/zitadel-cli/releases/download/v0.3.0/release-linux-amd64.tar.gz"
      sha256 "cee266a8cd5d1b02e70c37f327361e1ef937651bc33c96a7f6058e649a810c7e"

      def install
        bin.install "zitadel-cli-linux-amd64" => "zitadel-cli"
      end
    end

    on_arm do
      url "https://github.com/roylee17/zitadel-cli/releases/download/v0.3.0/release-linux-arm64.tar.gz"
      sha256 "29858150823b640f7ddcd51c22e402765085b4fad480d2d629b95151de211562"

      def install
        bin.install "zitadel-cli-linux-arm64" => "zitadel-cli"
      end
    end
  end

  test do
    assert_match "zitadel-cli", shell_output("#{bin}/zitadel-cli version")
  end
end
