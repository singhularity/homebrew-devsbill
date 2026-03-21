class Dbill < Formula
  desc "Track cloud costs across all your providers"
  homepage "https://devsbill.com"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://devsbill.com/downloads/v1.0.0/dbill-darwin-arm64.tar.gz"
      sha256 "dbfeda77fd4dc4110b90a328eea1d9f0b51f02157f0309a39e9f8b0575e3001a"

      def install
        bin.install "dbill-darwin-arm64" => "dbill"
      end
    else
      url "https://devsbill.com/downloads/v1.0.0/dbill-darwin-amd64.tar.gz"
      sha256 "e0330b273676539e8ef0d8879514c7069bf56abd9e648ef6fc8250395743e312"

      def install
        bin.install "dbill-darwin-amd64" => "dbill"
      end
    end
  end

  on_linux do
    url "https://devsbill.com/downloads/v1.0.0/dbill-linux-amd64.tar.gz"
    sha256 "c4a80cea5ac65d0e30b9289f6377e7db58c52ead0afd7288256c359fbb976436"

    def install
      bin.install "dbill-linux-amd64" => "dbill"
    end
  end

  test do
    assert_match "devsbill", shell_output("#{bin}/dbill --help")
  end
end
