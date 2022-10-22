class Myssh < Formula
  desc "Checking for existing SSH keys"
  homepage "https://github.com/devtical/myssh"
  url "https://github.com/devtical/myssh/releases/download/v0.0.1/myssh-x86_64-apple-darwin.tar.gz"
  sha256 "66c3a0debc369e8f3f4cccfd0bfbe87d94ae82c11fe046dd3c69aaa059830b2c"
  license "Apache-2.0"
  version "0.0.1"

  def install
    bin.install "myssh"
  end
end
