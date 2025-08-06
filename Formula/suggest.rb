class Suggest < Formula
  desc "A powerful command-line tool for interacting with AI models through various providers"
  homepage "https://github.com/tedfulk/suggest"
  version "0.1.58"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tedfulk/suggest/releases/download/v0.1.58/suggest-darwin-arm64.tar.gz"
    sha256 "341b3fcda72ab9629cb26c43a7b2b525d71ae0aba86d429691e939e211dfb5f1"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tedfulk/suggest/releases/download/v0.1.58/suggest-darwin-amd64.tar.gz"
    sha256 "d1ed99fc26d96d9365cae65f0b728a9b45e8a8023bf1c831ae73c5f533709c99"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tedfulk/suggest/releases/download/v0.1.58/suggest-linux-amd64.tar.gz"
    sha256 "f059fc9b2df3902e959aee495fb3e6df1cb200df1cd0ddc0447392af72d70d8c"
  end

  def install
    bin.install "suggest"
  end

  test do
    system "#{bin}/suggest", "--version"
  end
end