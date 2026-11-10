class Claudit < Formula
  desc "Terminal UI that shows Claude Code's agents at work in a make-believe IDE"
  homepage "https://github.com/pixelbender/claudit"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pixelbender/claudit/releases/download/v0.6.0/claudit-0.6.0-darwin-arm64.tar.gz"
      sha256 "28a607986f6581e6790badef58d0fda6aa701cdcdd19e11056cd9c5ecd3736d3"
    end
    on_intel do
      url "https://github.com/pixelbender/claudit/releases/download/v0.6.0/claudit-0.6.0-darwin-amd64.tar.gz"
      sha256 "a6024c8b78d5ac5f2db823283bc9a6220555ca6939f719723a63adf1c35f9534"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pixelbender/claudit/releases/download/v0.6.0/claudit-0.6.0-linux-arm64.tar.gz"
      sha256 "c0d41fc649ae124eaaae36daca172c1422c99f445c8d9118c168681d3235f493"
    end
    on_intel do
      url "https://github.com/pixelbender/claudit/releases/download/v0.6.0/claudit-0.6.0-linux-amd64.tar.gz"
      sha256 "ad6ae1a37a13246da1b4868099c3883011aafcaf3f7728e8bd6e8976f220a75d"
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
