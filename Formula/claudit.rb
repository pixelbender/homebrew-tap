class Claudit < Formula
  desc "Terminal UI that shows Claude Code's agents at work in a make-believe IDE"
  homepage "https://github.com/pixelbender/claudit"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pixelbender/claudit/releases/download/v0.5.0/claudit-0.5.0-darwin-arm64.tar.gz"
      sha256 "8533ec3c0d81dc308d739fa140bdd5dde03aad0d0e62a4a861d5eadc375fd9f8"
    end
    on_intel do
      url "https://github.com/pixelbender/claudit/releases/download/v0.5.0/claudit-0.5.0-darwin-amd64.tar.gz"
      sha256 "8f9b2a33f38dfb568ddf5d46084d7cee520f6b30d90376547c1f7add537fec95"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pixelbender/claudit/releases/download/v0.5.0/claudit-0.5.0-linux-arm64.tar.gz"
      sha256 "2bff183510362118864ddd45b11208b3c419594b6ace271db3a2fef451f59b52"
    end
    on_intel do
      url "https://github.com/pixelbender/claudit/releases/download/v0.5.0/claudit-0.5.0-linux-amd64.tar.gz"
      sha256 "43bff7a8277d6bd2fc62d85abc44d7f69cc8362fadfd5d9473dfeeec044384ff"
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
