class VspNnedi3cl < Formula
  desc "VapourSynth port of NNEDI3 utilizing OpenCL"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-NNEDI3CL"
  version "r7.2"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-NNEDI3CL/archive/r7.2.tar.gz"
  sha256 "b088c9828d2145164f3d36f0c59a01fe90a004ec46c2ef8c51f0d48eac4ee344"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-NNEDI3CL.git"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "pkg-config" => :build
  depends_on "libtool" => :build
  depends_on "boost" => :build
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
