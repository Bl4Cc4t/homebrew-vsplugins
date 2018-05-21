class VspTdeintmod < Formula
  desc "VapourSynth port of TDeint + TMM"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TDeintMod"
  version "r10"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TDeintMod/archive/r10.tar.gz"
  sha256 "46801e5620e7b012de6c040d60225a6fa8ec63afe78218d7f0edc360962a085d"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TDeintMod.git"

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
