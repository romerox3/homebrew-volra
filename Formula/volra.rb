class Volra < Formula
  desc "Own your agent infrastructure — deploy AI agents with monitoring"
  homepage "https://github.com/romerox3/volra"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/romerox3/volra/releases/download/v0.3.1/volra-darwin-arm64"
      sha256 "ae2be89721474bcde207e260c04e4767f0232d8ee31da1106a422e14a7c21ab7"

      def install
        bin.install "volra-darwin-arm64" => "volra"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/romerox3/volra/releases/download/v0.3.1/volra-linux-amd64"
      sha256 "097647a5490e768497b257729364ccf2ff6b1cc2d2df52d2bc115f760fe4a066"

      def install
        bin.install "volra-linux-amd64" => "volra"
      end
    end

    on_arm do
      url "https://github.com/romerox3/volra/releases/download/v0.3.1/volra-linux-arm64"
      sha256 "addc41391f466b965906762e01c67a73e30b630af83e7172d0a33832e33b0a70"

      def install
        bin.install "volra-linux-arm64" => "volra"
      end
    end
  end

  test do
    assert_match "volra", shell_output("#{bin}/volra --version 2>&1")
  end
end
