class Suggest < Formula
  desc "A powerful command-line tool for interacting with AI models through various providers"
  homepage "https://github.com/tedfulk/suggest"
  version "0.1.59"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tedfulk/suggest/releases/download/v0.1.59/suggest-darwin-arm64.tar.gz"
    sha256 "0ce1d9138159bb3aa447b8256811fda0634521bb32a5363642e009100cdd266f"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tedfulk/suggest/releases/download/v0.1.59/suggest-darwin-amd64.tar.gz"
    sha256 "1ebcbaceb3731cb79c77c6f3e5585fc7e9862303178cdf8243fc561dc0a0a6e7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tedfulk/suggest/releases/download/v0.1.59/suggest-linux-amd64.tar.gz"
    sha256 "96abbd125f90f63123e42d5e5ce97c1cadc89a653b792326c4c8b63e7b2be28a"
  end

  def install
    bin.install "suggest"
  end

  test do
    system "#{bin}/suggest", "--version"
  end
end