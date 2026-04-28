require "formula"
require_relative "../custom_download_strategy.rb"
class Xcg < Formula
  desc "xcg"
  homepage "https://software.xeneos.com/internal/cli"
  version "v2.0.0-beta.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/XeneosConsulting/xcg-cli/releases/download/v2.0.0-beta.1/xcg_v2.0.0-beta.1_macos-arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "39bcfcce20ecf073e173aff67ebb5d6562963f9dc1856bcf47a846bdbb3eafc8"
  end

  conflicts_with "xcg"

  def install
    bin.install "xcg"
  end

  test do
    system "#{bin}/xcg --version"
  end
end