class Localportal < Formula
  desc "localportal.io, Normalize serving from localhost"
  homepage "https://localportal.io"
  version "0.2.5"
  depends_on "ttyd"

  if Hardware::CPU.intel?
    url "https://storage.localportal.io/cli/#{version}/localportal-darwin-amd64-#{version}.tar.gz"
    sha256 "f255ba57c589737ad25336d08a3a6f645e263141abf444b3cbe4d8a07b5a7ee2"
  elsif Hardware::CPU.arm?
    url "https://storage.localportal.io/cli/#{version}/localportal-darwin-arm64-#{version}.tar.gz"
    sha256 "79b41d59d4299f78e05c755c886de94a0a55fed16b7b7b507787e476bdbdb42d"
  end

  def install
    arch = Hardware::CPU.intel? ? "amd64" : "arm64"
    bin.install "localportal-darwin-#{arch}-#{version}" => "localportal"
  end
end
