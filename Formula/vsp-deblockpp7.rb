class VspDeblockpp7 < Formula
  desc "VapourSynth port of pp7 from MPlayer"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DeblockPP7"
  version "r4"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DeblockPP7/archive/r4.tar.gz"
  sha256 "3bb7cdd302859754dbaf2216f9e110ebedcfde9e87f2738b1a50929657ab5732"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DeblockPP7.git"

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
