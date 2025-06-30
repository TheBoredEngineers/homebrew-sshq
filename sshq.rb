class Sshq < Formula
  desc "SSH Simplified for Devs"
  homepage "https://github.com/kshitijshettyyy/sshq"
  url "https://github.com/kshitijshettyyy/sshq/releases/download/v1.0.1/sshq"
  sha256 "088461fa339b6edd7dcd1fe5ada71b40b24e85304d385651c5115ff94adc9289"
  license "MIT"

  def install
    bin.install "sshq"
  end

  test do
    system "#{bin}/sshq"
  end
end

