class Mkforge < Formula
  desc "CLI tool for generating LLM context and development tasks"
  homepage "https://mkforge.github.io"
  version "v0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://mkforge.github.io/releases/v0.1.0/mkforge-darwin-arm64"
      sha256 "503f99f05c3e8e09cecedab196d05a59ba9df9013bd63cea3a7e15455698a577"
    else
      url "https://mkforge.github.io/releases/v0.1.0/mkforge-darwin-amd64"
      sha256 "1587bd839525678847ece52b340b831ca275a6611debe1f36cddbd1791aad525"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://mkforge.github.io/releases/v0.1.0/mkforge-linux-arm64"
      sha256 "adfe9c298775288b02c450da3b86929de39195309bd953e257fc65bc8ed1be31"
    else
      url "https://mkforge.github.io/releases/v0.1.0/mkforge-linux-amd64"
      sha256 "b504c15ddc3792c0e6ebc520c5046795110e6c8284b262440b55ade83a632ce5"
    end
  end

  def install
    bin.install Dir["*"][0] => "mkforge"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mkforge version")
  end
end
