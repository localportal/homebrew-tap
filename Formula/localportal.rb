class Localportal < Formula
  desc "localportal.io, Normalize serving from localhost"
  homepage "https://localportal.io"
  version "0.3.4"
  depends_on "ttyd"

  if Hardware::CPU.intel?
    url "https://storage.localportal.io/cli/#{version}/localportal-darwin-amd64-#{version}.tar.gz"
    sha256 "d5a0c0b15019385fe38a412683538c1a214a446bcd7b5d13bf1d46f07367b8f2"
  elsif Hardware::CPU.arm?
    url "https://storage.localportal.io/cli/#{version}/localportal-darwin-arm64-#{version}.tar.gz"
    sha256 "34aca6cff76aa4adbed3c3f96f72fc771b17ec66c3cbfd7edb17c16c1da12a07"
  end

  def install
    arch = Hardware::CPU.intel? ? "amd64" : "arm64"
    bin.install "localportal-darwin-#{arch}-#{version}" => "localportal"
  end
end
