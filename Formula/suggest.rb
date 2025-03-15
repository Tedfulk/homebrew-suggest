class Suggest < Formula
  desc "A powerful command-line tool for interacting with AI models through various providers"
  homepage "https://github.com/tedfulk/suggest"
  version "0.1.55"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tedfulk/suggest/releases/download/v0.1.55/suggest-darwin-arm64.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tedfulk/suggest/releases/download/v0.1.55/suggest-darwin-amd64.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tedfulk/suggest/releases/download/v0.1.55/suggest-linux-amd64.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  def install
    bin.install "suggest"
  end

  test do
    system "#{bin}/suggest", "--version"
  end
end