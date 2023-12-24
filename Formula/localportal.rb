class Localportal < Formula
  desc "localportal.io, Normalize serving from localhost"
  homepage "https://localportal.io"
  version "0.3.12"
  depends_on "ttyd"

  if Hardware::CPU.intel?
    url "https://storage.localportal.io/cli/#{version}/localportal-darwin-amd64-#{version}.tar.gz"
    sha256 "3c5b86731f87667f8189ec29fe2873b83fedb5ccabb8304600e32d9e4f588ebd"
  elsif Hardware::CPU.arm?
    url "https://storage.localportal.io/cli/#{version}/localportal-darwin-arm64-#{version}.tar.gz"
    sha256 "13ef487ff6f1e5625b793478618964c809612988302ecb8ade16c2f1d5b9b5b0"
  end

  def install
    arch = Hardware::CPU.intel? ? "amd64" : "arm64"
    bin.install "localportal-darwin-#{arch}-#{version}" => "localportal"
  end
end
