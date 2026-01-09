class ZitadelCli < Formula
  desc "CLI tool for Zitadel IAM provisioning and management"
  homepage "https://github.com/roylee17/zitadel-cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roylee17/zitadel-cli/releases/download/v0.2.2/release-darwin-arm64.tar.gz"
      sha256 "7ae419418f8c791f1c708a1019e9b142e9748be3673d6cab0cab7030a03350c5"

      def install
        bin.install "zitadel-cli-darwin-arm64" => "zitadel-cli"
      end
    end

    on_intel do
      url "https://github.com/roylee17/zitadel-cli/releases/download/v0.2.2/release-darwin-amd64.tar.gz"
      sha256 "aa0599581d5be2964692099936507b93fb9d0c691b6015f485c1a93c34727019"

      def install
        bin.install "zitadel-cli-darwin-amd64" => "zitadel-cli"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/roylee17/zitadel-cli/releases/download/v0.2.2/release-linux-amd64.tar.gz"
      sha256 "ac80d2493cb5fe32e559183f5532d14ef6fedb5b5b71e5dce683913ac4f00fe3"

      def install
        bin.install "zitadel-cli-linux-amd64" => "zitadel-cli"
      end
    end

    on_arm do
      url "https://github.com/roylee17/zitadel-cli/releases/download/v0.2.2/release-linux-arm64.tar.gz"
      sha256 "6900b211e70185200ade7e53458b36f14f00153777ba97790a5767e9dd0144a2"

      def install
        bin.install "zitadel-cli-linux-arm64" => "zitadel-cli"
      end
    end
  end

  test do
    assert_match "zitadel-cli", shell_output("#{bin}/zitadel-cli version")
  end
end
