class Volra < Formula
  desc "Own your agent infrastructure — deploy AI agents with monitoring"
  homepage "https://github.com/romerox3/volra"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/romerox3/volra/releases/download/v0.1.0/volra-darwin-arm64"
      sha256 "094ebcc1549cadbe167cd79e6981e3835f4d7aa57022919733fd33560bca6e0f"

      def install
        bin.install "volra-darwin-arm64" => "volra"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/romerox3/volra/releases/download/v0.1.0/volra-linux-amd64"
      sha256 "22b781862a5f9a56bf50f5ea57d48c07cc58a23c384a41acf9ea7f63496e9599"

      def install
        bin.install "volra-linux-amd64" => "volra"
      end
    end

    on_arm do
      url "https://github.com/romerox3/volra/releases/download/v0.1.0/volra-linux-arm64"
      sha256 "b1e6ece182ef70c93f120448671e2512f3a1a59d98e9c486a51f078507dc2137"

      def install
        bin.install "volra-linux-arm64" => "volra"
      end
    end
  end

  test do
    assert_match "volra", shell_output("#{bin}/volra --version 2>&1")
  end
end
