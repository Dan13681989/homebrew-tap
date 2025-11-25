class CleanmacPro < Formula
  desc "Enterprise macOS disk management and optimization suite"
  homepage "https://github.com/Dan13681989/CleanMac-Pro"
  url "https://github.com/Dan13681989/CleanMac-Pro/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "d1fea5076dcecbc178a68bea8cf085b577709f70c5068915b29058e74188a04b"
  license "MIT"

  depends_on "ncdu"
  depends_on "tree"

  def install
    # Install all main scripts from root (they should be there in the tarball)
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
