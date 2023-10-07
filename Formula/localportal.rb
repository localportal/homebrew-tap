class Localportal < Formula
  desc "localportal.io, Normalize serving from localhost"
  homepage "https://localportal.io"
  version "0.1.3"
  depends_on "ttyd"

  if Hardware::CPU.intel?
    url "https://storage.localportal.io/cli/#{version}/localportal-darwin-amd64-#{version}.tar.gz"
    sha256 "369bc39eebf9dadf83cf9f22cc2211c331bdff2866ad2745c93da19cf3b14740"
  elsif Hardware::CPU.arm?
    url "https://storage.localportal.io/cli/#{version}/localportal-darwin-arm64-#{version}.tar.gz"
    sha256 "2df02a7168171bf2ecfec159ab05d9dea1bf7f3bb9468f5fc0112332973a135f"
  end

  def install
    arch = Hardware::CPU.intel? ? "amd64" : "arm64"
    bin.install "localportal-darwin-#{arch}-#{version}" => "localportal"
  end
end
