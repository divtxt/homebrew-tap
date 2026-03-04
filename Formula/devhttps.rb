class DevHttps < Formula
  desc "Automatic https reverse proxy for local development"
  homepage "https://github.com/divtxt/devhttps"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/divtxt/devhttps/releases/download/v1.0.0/devhttps_darwin_arm64.tar.gz"
      sha256 "647332d03f43cfb089f4894af9fa9700c560a049af3357de368612e27f8629de"
    else
      url "https://github.com/divtxt/devhttps/releases/download/v1.0.0/devhttps_darwin_amd64.tar.gz"
      sha256 "fef70157bec9a183c680fb8b358877846278349f469ea603aba9f99e735989ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/divtxt/devhttps/releases/download/v1.0.0/devhttps_linux_arm64.tar.gz"
      sha256 "a93e21c42e641059dab504c932b5a1a8cb07e7037c3a73116b6eeecb0ca869d8"
    else
      url "https://github.com/divtxt/devhttps/releases/download/v1.0.0/devhttps_linux_amd64.tar.gz"
      sha256 "dc305525148224bb4ca5f3741fa673038c9f525db17fab6aac900c3a31b4509e"
    end
  end

  def install
    bin.install "devhttps"
  end

  test do
    system "#{bin}/devhttps", "--version"
  end
end