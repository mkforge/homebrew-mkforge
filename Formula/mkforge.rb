class Mkforge < Formula
  desc "CLI tool for generating LLM context and development tasks"
  homepage "https://mkforge.github.io"
  version "0.1.2"  # Use version without 'v' prefix

  on_macos do
    if Hardware::CPU.arm?
      url "https://mkforge.github.io/releases/v0.1.2/mkforge-darwin-arm64"
      sha256 "ab2f4fa70284adb74a44f4f9e8d2a4f055856a34c6fbe3eed77dbbacd3a24e1c"
    else
      url "https://mkforge.github.io/releases/v0.1.2/mkforge-darwin-amd64"
      sha256 "d9f7e3fabfde19022f85389bd83865acbc7bacacc6f196325a7c7feb7081ff40"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://mkforge.github.io/releases/v0.1.2/mkforge-linux-arm64"
      sha256 "4c82f34a533c56a07f087813d63bda649f0d2b86428e8fddb81ede9e6f527f00"
    else
      url "https://mkforge.github.io/releases/v0.1.2/mkforge-linux-amd64"
      sha256 "1a4d23a389024f54eeedc907f4fccfe6cd5df3a49a1c10c2e512433f4e0b57f8"
    end
  end

  def install
    bin.install Dir["*"][0] => "mkforge"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mkforge version")
  end
end
