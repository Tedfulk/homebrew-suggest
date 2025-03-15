class Suggest < Formula
  desc "A powerful command-line tool for interacting with AI models through various providers"
  homepage "https://github.com/tedfulk/suggest"
  version "0.1.54"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tedfulk/suggest/releases/download/v0.1.54/suggest-darwin-arm64.tar.gz"
    sha256 "facd617bf8d9c9a57c2efd53514b522377b41e6511317f62d89722546851181c"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tedfulk/suggest/releases/download/v0.1.54/suggest-darwin-amd64.tar.gz"
    sha256 "5525ab5bd35009321ae2075584316dc46adda0f5d297e8ba36d1f57f1809cc88"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tedfulk/suggest/releases/download/v0.1.54/suggest-linux-amd64.tar.gz"
    sha256 "d4a892e45906e025170db8859b28d3c61e1be117008f5ba53ba9a848f03f81a7"
  end

  def install
    bin.install "suggest"
  end

  test do
    system "#{bin}/suggest", "--version"
  end
end