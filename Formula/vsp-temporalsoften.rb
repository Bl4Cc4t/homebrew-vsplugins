class VspTemporalsoften < Formula
  desc "TemporalSoften plugin for VapourSynth"
  homepage "https://github.com/dubhater/vapoursynth-temporalsoften"
  version "1.0"
  url "https://github.com/dubhater/vapoursynth-temporalsoften/archive/v1.0.tar.gz"
  sha256 "e36eeae0e39d770eed688256e79288be3e1cc74cbb906ef8237a6eeebcad5a94"
  head "https://github.com/dubhater/vapoursynth-temporalsoften.git"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "pkg-config" => :build
  depends_on "libtool" => :build
  depends_on "vapoursynth"

  def install
    system "./autogen.sh"
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
  def post_install
    ohai ""
    ohai "When you’re done installing plugins:"
    ohai "Please run linkvsp.sh to link the libraries:"
    ohai "`/usr/local/Homebrew/Library/Taps/bl4cc4t/homebrew-vsplugins/linkvsp.sh`"
  end
end
