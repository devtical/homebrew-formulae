class Myssh < Formula
  desc "Inspect and manage SSH keys in your .ssh directory"
  homepage "https://github.com/devtical/myssh"
  version "0.0.4"
  license "Apache-2.0"

  depends_on macos: :monterey

  on_macos do
    on_intel do
      url "https://github.com/devtical/myssh/releases/download/v0.0.4/myssh-x86_64-apple-darwin.tar.gz"
      sha256 "a499c3d34f24a8df061eb5af1a3adfa38ccb9b808b21bb9648d5baad906bf3a9"
    end
    on_arm do
      url "https://github.com/devtical/myssh/releases/download/v0.0.4/myssh-aarch64-apple-darwin.tar.gz"
      sha256 "6a29180c38a96cae1bf646fa2356c7ec258dbb77ba6335e4df87eae08b6af222"
    end
  end

  def install
    bin.install "myssh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/myssh --version")
  end
end
