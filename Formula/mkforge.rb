class Mkforge < Formula
  desc "CLI tool for generating LLM context and development tasks"
  homepage "https://mkforge.github.io"
  version "0.1.0"  # Use version without 'v' prefix

  on_macos do
    if Hardware::CPU.arm?
      url "https://mkforge.github.io/releases/v0.1.0/mkforge-darwin-arm64"
      sha256 "db4b4ff45806bee209a75e4d924f86f47a72de4f6aae4ace895a1777d5fb7ad8"
    else
      url "https://mkforge.github.io/releases/v0.1.0/mkforge-darwin-amd64"
      sha256 "dc202d0e9eaec5645e5dd10cce2014727cd665ab508e8dcaeb63c78d0c92bf5a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://mkforge.github.io/releases/v0.1.0/mkforge-linux-arm64"
      sha256 "b6782dfdae71f771481a3d6f6efd0ea306a31cfdf714f121da2c32b5ad49d4d7"
    else
      url "https://mkforge.github.io/releases/v0.1.0/mkforge-linux-amd64"
      sha256 "95e2cb5144b11c2cab2779597ddd8ee7d708f85ef22c9dfd07544a101baa1c60"
    end
  end

  def install
    bin.install Dir["*"][0] => "mkforge"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mkforge version")
  end
end
