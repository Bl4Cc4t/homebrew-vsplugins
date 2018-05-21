class VspRetinex < Formula
  desc "Retinex algorithm for VapourSynth"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Retinex"
  # version "r3"
  # url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Retinex/archive/r3.tar.gz"
  # sha256 "fe5e65803f43452097f8315a1b800d5e137e5ef6fb5b326f177693d5a77ac1d4"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Retinex.git"

  depends_on "pkg-config" => :build
  depends_on "vapoursynth"
  depends_on "zimg"

  def install
    system "./configure", "--install=#{lib}"
    system "make", "install"
  end
  def post_install
    ohai ""
    ohai "When you’re done installing plugins:"
    ohai "Please run linkvsp.sh to link the libraries."
  end
end
