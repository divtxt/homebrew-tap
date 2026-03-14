class Devhttps < Formula
  desc "Easy https for local web development"
  homepage "https://github.com/divtxt/devhttps"
  version "1.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/divtxt/devhttps/releases/download/v1.0.3/devhttps_darwin_arm64.tar.gz"
      sha256 "4a6c0d9579da0b054e8507d26c9d786cba300b43f5753faf543a5f00c52dbb64"
    else
      url "https://github.com/divtxt/devhttps/releases/download/v1.0.3/devhttps_darwin_amd64.tar.gz"
      sha256 "675d589744966e27c1c8953ea2e0a4ccbccf30c5261bb41579f6fa70016c58ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/divtxt/devhttps/releases/download/v1.0.3/devhttps_linux_arm64.tar.gz"
      sha256 "1a1ee1c6137af4b4de61796bd116c92d1760e06ba27e1ae8f7d7e3d6e750b00d"
    else
      url "https://github.com/divtxt/devhttps/releases/download/v1.0.3/devhttps_linux_amd64.tar.gz"
      sha256 "bf40766e2fc57ccfb3f7a49cfe8059173ae4c92710ef7b2012e25f270370ad7e"
    end
  end

  def install
    bin.install "devhttps"
  end

  test do
    system "#{bin}/devhttps", "--version"
  end
end