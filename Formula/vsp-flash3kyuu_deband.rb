class VspFlash3kyuuDeband < Formula
  desc "A deband library and filter for avisynth/vapoursynth"
  homepage "http://www.nmm-hd.org/newbbs/viewtopic.php?f=7&t=239"
  version "2.0.0-1"
  url "https://github.com/SAPikachu/flash3kyuu_deband/archive/2.0.0-1.tar.gz"
  sha256 "5f68d017b45f8aecfeee3ac5343964c71eb8cbc209711aa5ad4dc9408f90f411"
  head "https://github.com/FFMS/ffms2.git"

  depends_on "cmake" => :build
  depends_on "python" => :build
  depends_on "vapoursynth"

  def install
    ENV["PYTHON"] = "/usr/local/bin/python3"
    system "./waf", "configure", "--prefix=#{prefix}"
    system "./waf", "build"
    system "./waf", "install"
  end
  def post_install
    ohai ""
    ohai "When you’re done installing plugins:"
    ohai "Please run linkvsp.sh to link the libraries:"
    ohai "`/usr/local/Homebrew/Library/Taps/bl4cc4t/homebrew-vsplugins/linkvsp.sh`"
  end
end
