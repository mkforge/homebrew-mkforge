class Mkforge < Formula
  desc "CLI tool for generating LLM context and development tasks"
  homepage "https://mkforge.github.io"
  version "0.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://mkforge.github.io/releases/v0.0.0/mkforge-darwin-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://mkforge.github.io/releases/v0.0.0/mkforge-darwin-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://mkforge.github.io/releases/v0.0.0/mkforge-linux-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://mkforge.github.io/releases/v0.0.0/mkforge-linux-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install Dir["*"][0] => "mkforge"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mkforge version")
  end
end
