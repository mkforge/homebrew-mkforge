class Mkforge < Formula
  desc "CLI tool for generating LLM context and development tasks"
  homepage "https://mkforge.github.io"
  version "v0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://mkforge.github.io/releases/v0.1.1/mkforge-darwin-arm64"
      sha256 "1a908350b9ddfe41d42aeb1fa3b62b3e26d97ed179d7511f01c2e12085db0bff"
    else
      url "https://mkforge.github.io/releases/v0.1.1/mkforge-darwin-amd64"
      sha256 "11d39bda4d0721beea114160a3bfb9ee678ef13cbdeaf03cfd4bfc12c7b5abb4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://mkforge.github.io/releases/v0.1.1/mkforge-linux-arm64"
      sha256 "14c8b8e80379ad66e6d9c8ca9f290768fcee718ae6a158b74b91742fd059073a"
    else
      url "https://mkforge.github.io/releases/v0.1.1/mkforge-linux-amd64"
      sha256 "6ada0d3760bae40a913e14c8006b9e9e68129e2d25c93d2dcda8a9b7e068a58c"
    end
  end

  def install
    bin.install Dir["*"][0] => "mkforge"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mkforge version")
  end
end
