class VspTtempsmooth < Formula
  desc "VapourSynth port of TTempSmooth"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TTempSmooth"
  version "r3"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TTempSmooth/archive/r3.tar.gz"
  sha256 "e7434f2deb9a465c77d3ce3f17661b02ce4a48e466be0d10809d6f741caf3cfb"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TTempSmooth.git"

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
