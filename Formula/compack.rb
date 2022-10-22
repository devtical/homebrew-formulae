class Compack < Formula
  desc "Template-based composer package generator"
  homepage "https://github.com/devtical/compack"
  url "https://github.com/devtical/compack/releases/download/v1.0.0/compack"
  sha256 "242ad4cb05bbc4cb360e9268ecc4c8ea5ef273f35ad9726fd9d582e48de6cd75"
  license "MIT"

  def install
    bin.install "compack"
  end
end
