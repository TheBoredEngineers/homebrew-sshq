class Sshq < Formula
  desc "SSH Simplified for Devs"
  homepage "https://github.com/TheBoredEngineers/sshq"
  url "https://github.com/TheBoredEngineers/sshq/releases/download/v1.0.3/sshq"
  sha256 "4b5b37c620b62076f072b1d5907676176f28ef8a6e485a6ac67411e91024e81c"
  license "MIT"

  def install
    bin.install "sshq"
  end

  test do
    system "#{bin}/sshq"
  end
end

