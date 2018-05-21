class VspTcanny < Formula
  desc "VapourSynth port of tcanny"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TCanny"
  version "r10"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TCanny/archive/r10.tar.gz"
  sha256 "620e1ba10077b252e048a8dbd1269300fb33c6849b1914f4db426b7bd3b655c5"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TCanny.git"

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
