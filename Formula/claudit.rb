class Claudit < Formula
  desc "Terminal UI that shows Claude Code's agents at work in a make-believe IDE"
  homepage "https://github.com/pixelbender/claudit"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pixelbender/claudit/releases/download/v0.4.0/claudit-0.4.0-darwin-arm64.tar.gz"
      sha256 "502ebdbc172b32ba69d038d59105e323d3792d224f64bb17085bf3547703ea8c"
    end
    on_intel do
      url "https://github.com/pixelbender/claudit/releases/download/v0.4.0/claudit-0.4.0-darwin-amd64.tar.gz"
      sha256 "cbaceea38a6015e021ca1be0b6daae12811ce2eaf4201b278772fd633c705cc9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pixelbender/claudit/releases/download/v0.4.0/claudit-0.4.0-linux-arm64.tar.gz"
      sha256 "c58b0feb82fb8c074b65742c42b4798c4638e3b3647acdc12e8d93d828b23b10"
    end
    on_intel do
      url "https://github.com/pixelbender/claudit/releases/download/v0.4.0/claudit-0.4.0-linux-amd64.tar.gz"
      sha256 "8077ef84fe10618e4bf9f1a423c000194cb55002c79e1a6c0e5cf4504065f72b"
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
