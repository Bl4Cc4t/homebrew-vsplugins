class VspDfttest < Formula
  desc "VapourSynth port of dfttest"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DFTTest"
  version "r4"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DFTTest/archive/r4.tar.gz"
  sha256 "8ef85c41c05550479c06bcf8ab761c71d932cee062dd341c447d9000bdc2e9ca"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DFTTest.git"

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
