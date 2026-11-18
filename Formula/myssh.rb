class Myssh < Formula
  desc "Inspect and manage SSH keys in your .ssh directory"
  homepage "https://github.com/devtical/myssh"
  version "0.0.5"
  license "Apache-2.0"

  depends_on macos: :monterey

  on_macos do
    on_intel do
      url "https://github.com/devtical/myssh/releases/download/v0.0.5/myssh-x86_64-apple-darwin.tar.gz"
      sha256 "e40793eafab7a9c2ab41e810c309c64274ced7e3b8f627daca26b06be0749606"
    end
    on_arm do
      url "https://github.com/devtical/myssh/releases/download/v0.0.5/myssh-aarch64-apple-darwin.tar.gz"
      sha256 "776e418269362085aa74e56bb78802a1d0119a62507a7c9c9edaec1d67b6e173"
    end
  end

  def install
    bin.install "myssh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/myssh --version")
  end
end
