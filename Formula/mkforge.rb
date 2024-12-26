class Mkforge < Formula
  desc "CLI tool for generating LLM context and development tasks"
  homepage "https://mkforge.github.io"
  version "0.1.0"  # Use version without 'v' prefix

  on_macos do
    if Hardware::CPU.arm?
      url "https://mkforge.github.io/releases/v0.1.0/mkforge-darwin-arm64"
      sha256 "3f1bafbf2a91e405aa0897e7ca14f7a68e92ee5bada220b01acae3aa3b445fb4"
    else
      url "https://mkforge.github.io/releases/v0.1.0/mkforge-darwin-amd64"
      sha256 "0bc6b076bdf7195222c2a23d3af1820440dca4a6ff89802e745eea1bd5a1a7dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://mkforge.github.io/releases/v0.1.0/mkforge-linux-arm64"
      sha256 "29c11cc00259ece964a82095db84ebd31f379f6c0e50cbcf764047067ff5111f"
    else
      url "https://mkforge.github.io/releases/v0.1.0/mkforge-linux-amd64"
      sha256 "3774d2d893f0b1c1cce011e8c71398f9555c940fff46448ce1404c257bc443e5"
    end
  end

  def install
    bin.install Dir["*"][0] => "mkforge"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mkforge version")
  end
end
