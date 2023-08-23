class Localportal < Formula
  desc "localportal.io, Normalize serving from localhost"
  homepage "https://localportal.io"
  version "0.0.13"
  depends_on "ttyd"

  if Hardware::CPU.intel?
    url "https://storage.localportal.io/cli/#{version}/localportal-darwin-amd64-#{version}.tar.gz"
    sha256 "1ccf060fdf4aa360944113e870154a74cdb9dca514d6094662290e7f946f3025"
  elsif Hardware::CPU.arm?
    url "https://storage.localportal.io/cli/#{version}/localportal-darwin-arm64-#{version}.tar.gz"
    sha256 "45304a7f704fe8ca87f171e2fdce559f79826032c894ef6600a7f6b509908409"
  end

  def install
    arch = Hardware::CPU.intel? ? "amd64" : "arm64"
    bin.install "localportal-darwin-#{arch}-#{version}" => "localportal"
  end
end
