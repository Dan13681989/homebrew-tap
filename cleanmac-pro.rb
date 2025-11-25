class CleanmacPro < Formula
  desc "Enterprise macOS disk management and optimization suite"
  homepage "https://github.com/Dan13681989/CleanMac-Pro"
  url "https://github.com/Dan13681989/CleanMac-Pro/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "6aad5f823a326c91362c89d2bf2783947ed82a70820660a745d18b31bff9e688"
  license "MIT"

  depends_on "ncdu"
  depends_on "tree"

  def install
    bin.install Dir["bin/*"]
    prefix.install "lib", "docs", "tests"
  end

  test do
    system "#{bin}/cleanmac-dashboard", "--help"
  end
end
