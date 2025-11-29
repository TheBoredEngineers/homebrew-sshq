class Sshq < Formula
  desc "SSH alias manager and connector"
  homepage "https://github.com/TheBoredEngineers/sshq"
  version "1.0.6"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/TheBoredEngineers/sshq/releases/download/v1.0.6/sshq_darwin_arm64"
    sha256 "d36c7f85f74bdbab0c009d0487c145af9e806b47743616220c3b43cede78b1bf"
  else
    url "https://github.com/TheBoredEngineers/sshq/releases/download/v1.0.6/sshq_darwin_amd64"
    sha256 "64814c5dbe2259b59d3d557350d4740e28b16491ed9fd0f21368b33ae5fe16dc"
  end

  def install
    bin.install "sshq_darwin_#{Hardware::CPU.arm? ? "arm64" : "amd64"}" => "sshq"
  end

  test do
    assert_match "sshq", shell_output("#{bin}/sshq --help")
  end
end

