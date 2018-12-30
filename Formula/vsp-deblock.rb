class VspDeblock < Formula
  desc "VapourSynth port of Deblock"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Deblock"
  version "r6.1"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Deblock/archive/r6.1.tar.gz"
  sha256 "d428c60c20f462d2975811727f578709e56bd8b744998a9d7fc66250fa6c6a76"
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
