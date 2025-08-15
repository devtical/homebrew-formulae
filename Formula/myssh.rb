class Myssh < Formula
  desc "Checking for existing SSH keys"
  homepage "https://github.com/devtical/myssh"
  url "https://github.com/devtical/myssh/releases/download/v0.0.3/myssh-x86_64-apple-darwin.tar.gz"
  version "0.0.3"
  sha256 "f25b60aa14eee0b4d4d9b9195348874d387d33fc6390eb8df1664cd0ffd3fd79"
  license "Apache-2.0"

  def install
    bin.install "myssh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/myssh --version")
  end
end
