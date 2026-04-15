class Dbill < Formula
  desc "Track cloud costs across all your providers"
  homepage "https://devsbill.com"
  version "0.4.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://devsbill.com/downloads/v1.0.0/dbill-darwin-arm64.tar.gz"
      sha256 "1a74336211d17a4a7a815ed4c68ebea8c11a30a05b7a0db76ec9466c170f2952"

      def install
        bin.install "dbill-darwin-arm64" => "dbill"
      end
    else
      url "https://devsbill.com/downloads/v1.0.0/dbill-darwin-amd64.tar.gz"
      sha256 "9d34fdad2e23ae0bed91d299a4e1e7d7bcff0cd60b9757213c9716bdd31c13bb"

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
