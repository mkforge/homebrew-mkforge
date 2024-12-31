class Mkforge < Formula
  desc "CLI tool for generating LLM context and development tasks"
  homepage "https://mkforge.github.io"
  version "0.1.1"  # Use version without 'v' prefix

  on_macos do
    if Hardware::CPU.arm?
      url "https://mkforge.github.io/releases/v0.1.1/mkforge-darwin-arm64"
      sha256 "38b0668391a3877a1562085561a498b30abe3bef8cba5a2888c658a75b27160e"
    else
      url "https://mkforge.github.io/releases/v0.1.1/mkforge-darwin-amd64"
      sha256 "86fa5f84ce622b5a81dc74e152f4b92d7bb5db62297ec8f6fd25a34b6c95c469"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://mkforge.github.io/releases/v0.1.1/mkforge-linux-arm64"
      sha256 "add7af72410a792174d831b13dd7978be7db7437ca04c2974f1219aef5ce97c3"
    else
      url "https://mkforge.github.io/releases/v0.1.1/mkforge-linux-amd64"
      sha256 "88a6bd3da894187f8e9fe736ff9f0537ec3e095c19042003c167020cefc167a5"
    end
  end

  def install
    bin.install Dir["*"][0] => "mkforge"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mkforge version")
  end
end
