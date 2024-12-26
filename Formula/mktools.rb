class Mktools < Formula
  desc "CLI tool for generating LLM context and development tasks"
  homepage "https://github.com/amenophis1er/mktools"
  version "v1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amenophis1er/mktools/releases/download/v1.0.0/mktools-darwin-arm64"
      sha256 "714a5ecb7a7da41643860f96424e020c26133454d8373754bbefcda3db0888e4"
    else
      url "https://github.com/amenophis1er/mktools/releases/download/v1.0.0/mktools-darwin-amd64"
      sha256 "243721c541140cfc882e84bbd94fc90d8b84716b87b6c4035d2dee9f2c46cc7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/amenophis1er/mktools/releases/download/v1.0.0/mktools-linux-arm64"
      sha256 "cb505e4809058c4bfdb65eedec3bcdc2dde4568fad4963fb5810019dff5c2dc6"
    else
      url "https://github.com/amenophis1er/mktools/releases/download/v1.0.0/mktools-linux-amd64"
      sha256 "56fea6e40fb025686616d3337ff1e0a2132760bf410cf6d3d8a5a75bd769715d"
    end
  end

  def install
    bin.install Dir["*"][0] => "mktools"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mktools version")
  end
end
