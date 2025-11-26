class CleanmacPro < Formula
  desc "Enterprise macOS disk management and optimization suite"
  homepage "https://github.com/Dan13681989/CleanMac-Pro"
  url "https://github.com/Dan13681989/CleanMac-Pro/archive/refs/tags/v2.2.3.tar.gz"
  sha256 "REPLACE_WITH_ACTUAL_CHECKSUM"
  license "MIT"

  depends_on "ncdu"
  depends_on "tree"

  def install
    bin.install "cleanmac-dashboard"
    bin.install "cleanmac-analyze"
    bin.install "cleanmac-large-files"
    bin.install "cleanmac-smart-cache"
    bin.install "cleanmac-docker-clean"
    bin.install "cleanmac-enterprise"
    bin.install "cleanmac-security-scan"
    bin.install "cleanmac-clean-now"
  end

  test do
    system "#{bin}/cleanmac-dashboard", "--help"
  end
end
