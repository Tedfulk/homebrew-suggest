class Suggest < Formula
  desc "A powerful command-line tool for interacting with AI models through various providers"
  homepage "https://github.com/tedfulk/suggest"
  version "0.1.55"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tedfulk/suggest/releases/download/v0.1.55/suggest-darwin-arm64.tar.gz"
    sha256 "0042f18c1e29cbae22f0535efe5f97ae8e851a8178a122ca88805ae31f1e9f38"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tedfulk/suggest/releases/download/v0.1.55/suggest-darwin-amd64.tar.gz"
    sha256 "0042f18c1e29cbae22f0535efe5f97ae8e851a8178a122ca88805ae31f1e9f38"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tedfulk/suggest/releases/download/v0.1.55/suggest-linux-amd64.tar.gz"
    sha256 "0042f18c1e29cbae22f0535efe5f97ae8e851a8178a122ca88805ae31f1e9f38"
  end

  def install
    bin.install "suggest"
  end

  test do
    system "#{bin}/suggest", "--version"
  end
end