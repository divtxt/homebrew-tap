class Devhttps < Formula
  desc "Automatic https reverse proxy for local development"
  homepage "https://github.com/divtxt/devhttps"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/divtxt/devhttps/releases/download/v1.0.1/devhttps_darwin_arm64.tar.gz"
      sha256 "311b9517ea5788e3cc945832a4bfff6486501e984f82e19311972e6246abad8d"
    else
      url "https://github.com/divtxt/devhttps/releases/download/v1.0.1/devhttps_darwin_amd64.tar.gz"
      sha256 "59010f1f8e28693bfd8c05b1562dc0c0526f3f2dae34ac7635ff5b964ff5112b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/divtxt/devhttps/releases/download/v1.0.1/devhttps_linux_arm64.tar.gz"
      sha256 "afc575f8df6764ab6917927ac852d548b9f25ed1968d2318fe12d41005f1f9b4"
    else
      url "https://github.com/divtxt/devhttps/releases/download/v1.0.1/devhttps_linux_amd64.tar.gz"
      sha256 "03e6d960f5a49da45d59fe31e6fb144fd88e0c2406c96e18fd76df3548ba7281"
    end
  end

  def install
    bin.install "devhttps"
  end

  test do
    system "#{bin}/devhttps", "--version"
  end
end