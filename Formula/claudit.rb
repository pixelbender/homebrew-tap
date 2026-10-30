class Claudit < Formula
  desc "Terminal UI that shows Claude Code's agents at work in a make-believe IDE"
  homepage "https://github.com/pixelbender/claudit"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pixelbender/claudit/releases/download/v0.2.0/claudit-0.2.0-darwin-arm64.tar.gz"
      sha256 "c1b82f356432caf51f7b093de3a6ee37428ad1b3623f4eb1dfe96ea93dc05970"
    end
    on_intel do
      url "https://github.com/pixelbender/claudit/releases/download/v0.2.0/claudit-0.2.0-darwin-amd64.tar.gz"
      sha256 "148c0370702c0c1f39d0ac4d0e51021223a94e6c459a5a731907511b25f1af3f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pixelbender/claudit/releases/download/v0.2.0/claudit-0.2.0-linux-arm64.tar.gz"
      sha256 "e1c6b1e566bd7b087578fe344ffc53fc0f462063106a96577e9820a300a5fa5a"
    end
    on_intel do
      url "https://github.com/pixelbender/claudit/releases/download/v0.2.0/claudit-0.2.0-linux-amd64.tar.gz"
      sha256 "13ef1e84efed5fc91a427fb8c6c760793d2f9269d190d5e50463653f830ecbf8"
    end
  end

  def install
    bin.install "claudit"
  end

  def caveats
    <<~EOS
      claudit runs Claude Code, which must be on the PATH and logged in:
        brew install --cask claude-code
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claudit --version")
  end
end
