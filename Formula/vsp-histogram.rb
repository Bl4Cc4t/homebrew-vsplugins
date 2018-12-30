class VspHistogram < Formula
  desc "Histogram plugin for VapourSynth"
  homepage "https://github.com/dubhater/vapoursynth-histogram"
  version "2"
  url "https://github.com/dubhater/vapoursynth-histogram/archive/v2.tar.gz"
  sha256 "17d33d98d52310e3890dd12411e9065f95e6b3249b4b8b8edd10d5e416674013"
  head "https://github.com/dubhater/vapoursynth-histogram.git"

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
