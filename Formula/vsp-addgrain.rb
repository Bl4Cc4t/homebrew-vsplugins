class VspAddgrain < Formula
  desc "VapourSynth port of AddGrainC"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-AddGrain"
  version "r7"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-AddGrain/archive/r7.tar.gz"
  sha256 "3adeb77f59b6da43663f906523eb19e47a16a8a9b9607ad97442f09ab12680b9"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-AddGrain.git"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "pkg-config" => :build
  depends_on "libtool" => :build
  depends_on "vapoursynth"
  depends_on "zimg"

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
