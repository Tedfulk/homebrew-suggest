class Suggest < Formula
  desc "A powerful command-line tool for interacting with AI models through various providers"
  homepage "https://github.com/tedfulk/suggest"
  version "0.1.56"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tedfulk/suggest/releases/download/v0.1.56/suggest-darwin-arm64.tar.gz"
    sha256 "68c9b51551202414761b8aec11c7ab2c0e4de8bd9f2157d22737a42ad41c38f5"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tedfulk/suggest/releases/download/v0.1.56/suggest-darwin-amd64.tar.gz"
    sha256 "bd9b9aed53f21e14370bf04273e1f86e9d4ad8d8094e5cd9a1d5b57b8ddd8ec9"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tedfulk/suggest/releases/download/v0.1.56/suggest-linux-amd64.tar.gz"
    sha256 "17ad6cbdb7967e49f0161f13702dae665a83f99912469eb7044a0c35373176a2"
  end

  def install
    bin.install "suggest"
  end

  test do
    system "#{bin}/suggest", "--version"
  end
end