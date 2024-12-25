class Mktools < Formula
  desc "CLI tool for generating LLM context and development tasks"
  homepage "https://github.com/amenophis1er/mktools"
  version "v1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amenophis1er/mktools/releases/download/v1.0.0/mktools-darwin-arm64"
      sha256 "633d3aede4e7ca1a1fcdfc8a96fca1f67617930e69d0636326cade4cb73f3e39"
    else
      url "https://github.com/amenophis1er/mktools/releases/download/v1.0.0/mktools-darwin-amd64"
      sha256 "0e5b82712b7527a9ad020c60f9c3eeb2ea8f42ca659b9da1bf8e29083523cee1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/amenophis1er/mktools/releases/download/v1.0.0/mktools-linux-arm64"
      sha256 "ddea816a8434ae0300e936a6c85c334d4b6bf89b9144b1823d24e8c429617a6f"
    else
      url "https://github.com/amenophis1er/mktools/releases/download/v1.0.0/mktools-linux-amd64"
      sha256 "9da73df150afb42f0660b37de2d3ec84abe4e0129b38636c9ab5be96eff7d73b"
    end
  end

  def install
    bin.install Dir["*"][0] => "mktools"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mktools version")
  end
end
