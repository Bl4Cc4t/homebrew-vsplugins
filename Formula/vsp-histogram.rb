class VspHistogram < Formula
  desc "Histogram plugin for VapourSynth"
  homepage "https://github.com/dubhater/vapoursynth-histogram"
  version "1.0"
  url "https://github.com/dubhater/vapoursynth-histogram/archive/v1.0.tar.gz"
  sha256 "4b9a958e3c2446c039050c85272b96178d8f27793fd01699f0c3a508f1d72989"
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
