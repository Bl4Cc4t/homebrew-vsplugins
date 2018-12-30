class VspDfttest < Formula
  desc "VapourSynth port of dfttest"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DFTTest"
  version "r4.1"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DFTTest/archive/r4.1.tar.gz"
  sha256 "d74747be71aa4c356b9ce196e6d268121aabb89e0c99a11591f63e69346eb5cc"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DFTTest.git"

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
