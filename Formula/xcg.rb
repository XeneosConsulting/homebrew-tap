require "formula"
require_relative "../custom_download_strategy.rb"
class Xcg < Formula
  desc "xcg"
  homepage "https://software.xeneos.com/internal/cli"
  version "v2.0.0-beta.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/XeneosConsulting/xcg-cli/releases/download/v2.0.0-beta.0/xcg_v2.0.0-beta.0_macos-arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "1a42d414291c556f0f2f891560082ed3c371bb2cbcdd533833f87e3d761a4bc7"
  end

  conflicts_with "xcg"

  def install
    bin.install "xcg"
  end

  test do
    system "#{bin}/xcg --version"
  end
end