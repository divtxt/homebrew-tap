class Devhttps < Formula
  desc "Automatic https reverse proxy for local development"
  homepage "https://github.com/divtxt/devhttps"
  version "1.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/divtxt/devhttps/releases/download/v1.0.2/devhttps_darwin_arm64.tar.gz"
      sha256 "b433a4d0a15527712d18ef36baea5899d58299c3e87c11ffe61d33a4faa5c983"
    else
      url "https://github.com/divtxt/devhttps/releases/download/v1.0.2/devhttps_darwin_amd64.tar.gz"
      sha256 "6cbd199fb4bd620ceccf76763385b2213fc29dafb3eaf2341e5533d8f6b5659c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/divtxt/devhttps/releases/download/v1.0.2/devhttps_linux_arm64.tar.gz"
      sha256 "104354b2c31ab22e9cf8fea8d1b26c3bfda60c59d5e30ffc664816f0848a66d9"
    else
      url "https://github.com/divtxt/devhttps/releases/download/v1.0.2/devhttps_linux_amd64.tar.gz"
      sha256 "1faf325ba75f869f188ece8290aa43e6aec2b532a9e75a882bdd33c3f25843a9"
    end
  end

  def install
    bin.install "devhttps"
  end

  test do
    system "#{bin}/devhttps", "--version"
  end
end