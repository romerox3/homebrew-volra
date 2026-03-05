class Volra < Formula
  desc "Own your agent infrastructure — deploy AI agents with monitoring"
  homepage "https://github.com/romerox3/volra"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/romerox3/volra/releases/download/v0.3.0/volra-darwin-arm64"
      sha256 "3a131bd8a08f234c86d74ff809ee0fbc9e96eab72b1599f42b0f8000454a171e"

      def install
        bin.install "volra-darwin-arm64" => "volra"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/romerox3/volra/releases/download/v0.3.0/volra-linux-amd64"
      sha256 "358301c8afa467f7c68550c714e42399ee0b8820f8a6afe3248a7c7eb318787d"

      def install
        bin.install "volra-linux-amd64" => "volra"
      end
    end

    on_arm do
      url "https://github.com/romerox3/volra/releases/download/v0.3.0/volra-linux-arm64"
      sha256 "6e96c474b20be39d054dc8584caf6a8b0332427f4e10ae0f6a805b487a89b18b"

      def install
        bin.install "volra-linux-arm64" => "volra"
      end
    end
  end

  test do
    assert_match "volra", shell_output("#{bin}/volra --version 2>&1")
  end
end
