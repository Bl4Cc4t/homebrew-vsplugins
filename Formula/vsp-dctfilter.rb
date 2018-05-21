class VspDctfilter < Formula
  desc "Renewed VapourSynth port of DCTFilter"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DCTFilter"
  version "r2"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DCTFilter/archive/r2.tar.gz"
  sha256 "d00f848619ca8b8eae138d0cb1707dde635b9f62f4039c29a2537e2cf9988896"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DCTFilter.git"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "pkg-config" => :build
  depends_on "libtool" => :build
  depends_on "vapoursynth"
  depends_on "fftw"

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
