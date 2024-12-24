# Formula/mktools.rb
class Mktools < Formula
  desc "CLI tool for generating LLM context and development tasks"
  homepage "https://github.com/amenophis1er/mktools"
  version "v1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amenophis1er/mktools/releases/download/v1.0.0/mktools-darwin-arm64"
      sha256 "..."
    else
      url "https://github.com/amenophis1er/mktools/releases/download/v1.0.0/mktools-darwin-amd64"
      sha256 "..."
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/amenophis1er/mktools/releases/download/v1.0.0/mktools-linux-arm64"
      sha256 "..."
    else
      url "https://github.com/amenophis1er/mktools/releases/download/v1.0.0/mktools-linux-amd64"
      sha256 "..."
    end
  end

  def install
    bin.install Dir["*"][0] => "mktools"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mktools version")
  end
end