require "formula"
require_relative "../custom_download_strategy.rb"
class Xcg < Formula
  desc "xcg"
  homepage "https://software.xeneos.com/internal/cli"
  version "v2.0.0-beta.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/XeneosConsulting/xcg-cli/releases/download/v2.0.0-beta.2/xcg_v2.0.0-beta.2_macos-arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "1887bd5a03e59a82890ee1afe11aedac0d9e6e35cfee6738eee820b470d2bd73"
  end

  conflicts_with "xcg"

  def install
    bin.install "xcg"
  end

  test do
    system "#{bin}/xcg --version"
  end
end