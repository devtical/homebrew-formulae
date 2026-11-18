class Myssh < Formula
  desc "Inspect and manage SSH keys in your .ssh directory"
  homepage "https://github.com/devtical/myssh"
  license "Apache-2.0"

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

  on_linux do
    on_intel do
      url "https://github.com/devtical/myssh/archive/refs/tags/v0.0.5.tar.gz"
      sha256 "ecf9e76416fa6358047b27159b7017089b7cc18ad8bef5741b206432dd10fd73"
    end
    on_arm do
      url "https://github.com/devtical/myssh/archive/refs/tags/v0.0.5.tar.gz"
      sha256 "ecf9e76416fa6358047b27159b7017089b7cc18ad8bef5741b206432dd10fd73"
    end

    depends_on "rust" => :build
  end

  def install
    if OS.mac?
      bin.install "myssh"
    else
      system "cargo", "install", *std_cargo_args
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/myssh --version")
  end
end
