class Mkforge < Formula
  desc "CLI tool for generating LLM context and development tasks"
  homepage "https://mkforge.github.io"
  version "1.0.3"  # Use version without 'v' prefix

  on_macos do
    if Hardware::CPU.arm?
      url "https://mkforge.github.io/releases/v1.0.3/mkforge-darwin-arm64"
      sha256 "ba396ec6b0e16ea457c8dd21b3126284a5c80b6908830e1f1fe89d1d691c43dc"
    else
      url "https://mkforge.github.io/releases/v1.0.3/mkforge-darwin-amd64"
      sha256 "062e9048a9217cd9bfc0a3fce9604c91c3dd9fa3a9296afe90dadb0a68b507cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://mkforge.github.io/releases/v1.0.3/mkforge-linux-arm64"
      sha256 "bb8f954bdf9215b1f2294d54b25386f8bedf68c101a7ce7677734e3fb4ba7cdf"
    else
      url "https://mkforge.github.io/releases/v1.0.3/mkforge-linux-amd64"
      sha256 "5c49520218db3c074bf4357a103047df38e09c86d3bd2c292d52b85c4c1161b8"
    end
  end

  def install
    bin.install Dir["*"][0] => "mkforge"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mkforge version")
  end
end
