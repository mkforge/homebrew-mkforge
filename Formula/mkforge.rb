class Mkforge < Formula
  desc "CLI tool for generating LLM context and development tasks"
  homepage "https://mkforge.github.io"
  version "0.1.1"  # Use version without 'v' prefix

  on_macos do
    if Hardware::CPU.arm?
      url "https://mkforge.github.io/releases/v0.1.1/mkforge-darwin-arm64"
      sha256 "c68f3d61f384cbfaff29094e32e0c0cb94e2d747802463dbc8cc757d3e46aca2"
    else
      url "https://mkforge.github.io/releases/v0.1.1/mkforge-darwin-amd64"
      sha256 "059de027d051b98cfd0676562dc82efbd6d9e49a334d9ae2b0ada5aa2710298f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://mkforge.github.io/releases/v0.1.1/mkforge-linux-arm64"
      sha256 "09e5bbbffbfa6e7accf94d38363f15ab71cc2ccbf2baa8d4bbfa0fac035abf3f"
    else
      url "https://mkforge.github.io/releases/v0.1.1/mkforge-linux-amd64"
      sha256 "b2ca6ae7172bcadcfd86c3d09f0b85a6d4ad60967f726c9c85bc985d4e54596f"
    end
  end

  def install
    bin.install Dir["*"][0] => "mkforge"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mkforge version")
  end
end
