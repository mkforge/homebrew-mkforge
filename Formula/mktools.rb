class Mktools < Formula
  desc "CLI tool for generating LLM context and development tasks"
  homepage "https://github.com/amenophis1er/mktools"
  version "v1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amenophis1er/mktools/releases/download/v1.0.1/mktools-darwin-arm64"
      sha256 "8d99ffff1206fb1bb46905012c03c5c8c8b382166759310a45bc3e8e7d3e5a46"
    else
      url "https://github.com/amenophis1er/mktools/releases/download/v1.0.1/mktools-darwin-amd64"
      sha256 "654e1f80070e0d22df4785971758bb79b8173fa683bb1db409ad34ba68c36d7b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/amenophis1er/mktools/releases/download/v1.0.1/mktools-linux-arm64"
      sha256 "01a80c53a6b516da5d51392c06abf851d27b6cf744fe355b43726b125fdadb19"
    else
      url "https://github.com/amenophis1er/mktools/releases/download/v1.0.1/mktools-linux-amd64"
      sha256 "b6036c7821dce79ad1e2dc3e1af7759390a9ec1b80653fdd69e16baa91758bf6"
    end
  end

  def install
    bin.install Dir["*"][0] => "mktools"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mktools version")
  end
end
