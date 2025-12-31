class ZitadelCli < Formula
  desc "CLI tool for Zitadel IAM provisioning and management"
  homepage "https://github.com/roylee17/zitadel-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roylee17/zitadel-cli/releases/download/v0.2.1/release-darwin-arm64.tar.gz"
      sha256 "8b6dbda5d72006672dd3e35478d80305518907c447306f6bb752c10f91c4d2b4"

      def install
        bin.install "zitadel-cli/zitadel-cli-darwin-arm64" => "zitadel-cli"
      end
    end

    on_intel do
      url "https://github.com/roylee17/zitadel-cli/releases/download/v0.2.1/release-darwin-amd64.tar.gz"
      sha256 "19422f7eb63923cd83b4da0f49f8cb50183af5b17eb23a3de77f7e44e1afb18d"

      def install
        bin.install "zitadel-cli/zitadel-cli-darwin-amd64" => "zitadel-cli"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/roylee17/zitadel-cli/releases/download/v0.2.1/release-linux-amd64.tar.gz"
      sha256 "74a40576ccc35cf2d7d6942842542467882c5abc87cf854f2d43fac4aee9bb80"

      def install
        bin.install "zitadel-cli/zitadel-cli-linux-amd64" => "zitadel-cli"
      end
    end

    on_arm do
      url "https://github.com/roylee17/zitadel-cli/releases/download/v0.2.1/release-linux-arm64.tar.gz"
      sha256 "699939863766e82eb65e52be5a165275b91e5e3695d6ed13b5070716f6289a52"

      def install
        bin.install "zitadel-cli/zitadel-cli-linux-arm64" => "zitadel-cli"
      end
    end
  end

  test do
    assert_match "zitadel-cli", shell_output("#{bin}/zitadel-cli version")
  end
end
