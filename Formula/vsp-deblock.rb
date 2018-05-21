class VspDeblock < Formula
  desc "VapourSynth port of Deblock"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Deblock"
  version "r6"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Deblock/archive/r6.tar.gz"
  sha256 "131be862aac027a2d292974222f1bc4d156cce1514ded8a0c4150d0d4c2c94c4"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Deblock.git"

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
