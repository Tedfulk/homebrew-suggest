class Suggest < Formula
  desc "A powerful command-line tool for interacting with AI models through various providers"
  homepage "https://github.com/tedfulk/suggest"
  version "0.1.56"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tedfulk/suggest/releases/download/v0.1.56/suggest-darwin-arm64.tar.gz"
    sha256 "d25a2d5f74a66006d6be738f97a3a3509ca31653dc783e76d30aae7882972772"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tedfulk/suggest/releases/download/v0.1.56/suggest-darwin-amd64.tar.gz"
    sha256 "f80afd643c3f454a6c1f7f78175ce45c5a34e3d3531886fa6483033858361749"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tedfulk/suggest/releases/download/v0.1.56/suggest-linux-amd64.tar.gz"
    sha256 "ce5ae79ad0ac08cfada86151af8dc233ac42f085d243d65605f1c1378db431b8"
  end

  def install
    bin.install "suggest"
  end

  test do
    system "#{bin}/suggest", "--version"
  end
end