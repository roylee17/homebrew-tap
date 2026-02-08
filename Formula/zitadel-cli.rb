class ZitadelCli < Formula
  desc "CLI tool for Zitadel IAM provisioning and management"
  homepage "https://github.com/roylee17/zitadel-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roylee17/zitadel-cli/releases/download/v0.4.0/release-darwin-arm64.tar.gz"
      sha256 "2e1490bf9c4b04579ef1632d898459f1679ed0fba44e4ae1ae7d0cb543b3a57f"

      def install
        bin.install "zitadel-cli-darwin-arm64" => "zitadel-cli"
      end
    end

    on_intel do
      url "https://github.com/roylee17/zitadel-cli/releases/download/v0.4.0/release-darwin-amd64.tar.gz"
      sha256 "eba1795119602456bedf57f965b03ec0863c2ea201e98bf68b0effe6e192aceb"

      def install
        bin.install "zitadel-cli-darwin-amd64" => "zitadel-cli"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/roylee17/zitadel-cli/releases/download/v0.4.0/release-linux-amd64.tar.gz"
      sha256 "65e45277e3b6057276a7d7e036355cd1f50110b9833abaa80387211e49a6e6e1"

      def install
        bin.install "zitadel-cli-linux-amd64" => "zitadel-cli"
      end
    end

    on_arm do
      url "https://github.com/roylee17/zitadel-cli/releases/download/v0.4.0/release-linux-arm64.tar.gz"
      sha256 "b9a3ab3d2f761ca3d31171bc026be857544844438251462220f5637ca5abaec3"

      def install
        bin.install "zitadel-cli-linux-arm64" => "zitadel-cli"
      end
    end
  end

  test do
    assert_match "zitadel-cli", shell_output("#{bin}/zitadel-cli version")
  end
end
