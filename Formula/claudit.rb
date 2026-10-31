class Claudit < Formula
  desc "Terminal UI that shows Claude Code's agents at work in a make-believe IDE"
  homepage "https://github.com/pixelbender/claudit"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pixelbender/claudit/releases/download/v0.3.0/claudit-0.3.0-darwin-arm64.tar.gz"
      sha256 "1ce76f42d2ffc8df027fe25e6bfe600aeeab0bc7fa91307793e4e3967d497ada"
    end
    on_intel do
      url "https://github.com/pixelbender/claudit/releases/download/v0.3.0/claudit-0.3.0-darwin-amd64.tar.gz"
      sha256 "37ae35c0f274f49e97961d30319f2f283586c34e81b9698e1c2bf2ded081388e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pixelbender/claudit/releases/download/v0.3.0/claudit-0.3.0-linux-arm64.tar.gz"
      sha256 "63dd36614b9b79b084ec4a73dc7d1a5d65d2433c04d2097a25ef53d4c3110d67"
    end
    on_intel do
      url "https://github.com/pixelbender/claudit/releases/download/v0.3.0/claudit-0.3.0-linux-amd64.tar.gz"
      sha256 "ab252363491609f72bf10b4c760067e8bef2e422e6f51f37d5b19a59e47cda76"
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
