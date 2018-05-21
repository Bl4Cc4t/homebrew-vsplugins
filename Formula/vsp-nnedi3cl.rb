class VspNnedi3cl < Formula
  desc "VapourSynth port of NNEDI3 utilizing OpenCL"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-NNEDI3CL"
  version "r7"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-NNEDI3CL/archive/r7.tar.gz"
  sha256 "11890b2ca27c5127068579ca3c72c191dca0563483e4c565ec83cdacee4bfb51"
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
