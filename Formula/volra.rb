class Volra < Formula
  desc "Own your agent infrastructure — deploy AI agents with monitoring"
  homepage "https://github.com/romerox3/volra"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/romerox3/volra/releases/download/v0.2.0/volra-darwin-arm64"
      sha256 "067f3a8cf1f4b340e8f0b6e9930bed1431a5f4514d3aa59b6fc37f45d44a7882"

      def install
        bin.install "volra-darwin-arm64" => "volra"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/romerox3/volra/releases/download/v0.2.0/volra-linux-amd64"
      sha256 "a29d539113f229f3de87559ae961671367282b91320fc7f3d20f13fbffa28122"

      def install
        bin.install "volra-linux-amd64" => "volra"
      end
    end

    on_arm do
      url "https://github.com/romerox3/volra/releases/download/v0.2.0/volra-linux-arm64"
      sha256 "47fb4c5a08eff6625731428348f56f7097d9274b15fa1f1a93adc2e3ec1a265f"

      def install
        bin.install "volra-linux-arm64" => "volra"
      end
    end
  end

  test do
    assert_match "volra", shell_output("#{bin}/volra --version 2>&1")
  end
end
