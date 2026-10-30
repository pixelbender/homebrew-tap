class Claudit < Formula
  desc "Terminal UI that shows Claude Code's agents at work in a make-believe IDE"
  homepage "https://github.com/pixelbender/claudit"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pixelbender/claudit/releases/download/v0.1.0/claudit-0.1.0-darwin-arm64.tar.gz"
      sha256 "18f99d3679c9606a56b05e20b75002028cf8a58c296f81dcaf7820dc76f9203e"
    end
    on_intel do
      url "https://github.com/pixelbender/claudit/releases/download/v0.1.0/claudit-0.1.0-darwin-amd64.tar.gz"
      sha256 "847f8e2bc774b6b81a27bbc9a9a4155d3e14df0adff3ff5caf2978aeaa1cff08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pixelbender/claudit/releases/download/v0.1.0/claudit-0.1.0-linux-arm64.tar.gz"
      sha256 "8c832e2ad5f5fdb62bb6a853ca0653c76d5ffe81459981a338e88e4b8209f9ee"
    end
    on_intel do
      url "https://github.com/pixelbender/claudit/releases/download/v0.1.0/claudit-0.1.0-linux-amd64.tar.gz"
      sha256 "bf2b69005d6278a56ac9173de20cef7bb07ba460807d5fbc902f63fb91ec0e9c"
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
