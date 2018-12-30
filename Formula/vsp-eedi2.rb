class VspEedi2 < Formula
  desc "VapourSynth port of EEDI2"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-EEDI2"
  version "r7.1"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-EEDI2/archive/r7.1.tar.gz"
  sha256 "62146635e0d0cadfdd6b2426941968261992c7d6172d3a244802a1d5129b757a"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-EEDI2.git"

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
