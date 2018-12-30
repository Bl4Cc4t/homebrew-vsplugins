class VspAddgrain < Formula
  desc "VapourSynth port of AddGrainC"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-AddGrain"
  version "r7"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-AddGrain/archive/r7.tar.gz"
  sha256 "c428d05fb4705616dc9c6fbe5f57b3216e3fb7b9c1cdf6094dfdc85d4eb0b5be"
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
    system "make"
  end
  def post_install
    ohai ""
    ohai "When you’re done installing plugins:"
    ohai "Please run linkvsp.sh to link the libraries:"
    ohai "`/usr/local/Homebrew/Library/Taps/bl4cc4t/homebrew-vsplugins/linkvsp.sh`"
  end
end
