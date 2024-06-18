require "formula"
require_relative "../custom_download_strategy.rb"

class Aycehp < Formula
    desc "All You Can Eat Hot Pot"
    version "0.1.0"
    license "MIT"
    
    on_linux do
        if Hardware::CPU.intel?
            url "https://github.com/absolutejunkyarddog/homebrew-private/releases/download/v0.1.0/aycehp-0.1.0-linux-x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
            sha256 "298149d034af3783a08d820e89005fda85bcc43063ad7fe63c11ef5258984fde"
        elsif Hardware::CPU.arm?
            url "https://github.com/absolutejunkyarddog/homebrew-private/releases/download/v0.1.0/aycehp-0.1.0-linux-arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
            sha256 "0208ed34a343f8d1ed9b6b31140864bee2c5cd12551b4d2e15843786dec94729"
        end
    end
    
    def install
        bin.install "aycehp"
    end

    test do
        system "#{bin}/aycehp", "--version"
    end
end
