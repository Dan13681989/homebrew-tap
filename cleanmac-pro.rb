class CleanmacPro < Formula
  desc "Enterprise macOS disk management and optimization suite"
  homepage "https://github.com/Dan13681989/CleanMac-Pro"
  url "https://github.com/Dan13681989/CleanMac-Pro/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "d1fea5076dcecbc178a68bea8cf085b577709f70c5068915b29058e74188a04b"
  license "MIT"

  depends_on "ncdu"
  depends_on "tree"

  def install
    # Install all binaries
    bin.install "bin/cleanmac-dashboard"
    bin.install "bin/cleanmac-analyze" 
    bin.install "bin/cleanmac-large-files"
    bin.install "bin/cleanmac-smart-cache"
    bin.install "bin/cleanmac-docker-clean"
    bin.install "bin/cleanmac-enterprise"
    bin.install "bin/cleanmac-security-scan"
    bin.install "bin/cleanmac-clean-now"
  end

  test do
    system "#{bin}/cleanmac-dashboard", "--help"
  end
end
