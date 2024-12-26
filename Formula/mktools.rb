class Mktools < Formula
  desc "CLI tool for generating LLM context and development tasks"
  homepage "https://github.com/amenophis1er/mktools"
  version "v0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amenophis1er/mktools/releases/download/v0.1.0/mktools-darwin-arm64"
      sha256 "0d0509b3ca97af36c9acbd3fcfd939dfd274e3126cef45cf6278008719015200"
    else
      url "https://github.com/amenophis1er/mktools/releases/download/v0.1.0/mktools-darwin-amd64"
      sha256 "4624ae2bae7e3e793198a26e3475ac427714320cd3690c9ebf4c35acef6509b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/amenophis1er/mktools/releases/download/v0.1.0/mktools-linux-arm64"
      sha256 "6b114dae71f8c6f2be0fb121767abc7aef74c9cc627fff384258dcf7f949e862"
    else
      url "https://github.com/amenophis1er/mktools/releases/download/v0.1.0/mktools-linux-amd64"
      sha256 "1f4bbe4ec09712df1b9b2e258bfb281bc79ecb28d3f88ec36011f727f16703f7"
    end
  end

  def install
    bin.install Dir["*"][0] => "mktools"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mktools version")
  end
end
