class VspDepan < Formula
  desc "VapourSynth port of DePan"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DePan"
  version "r1"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DePan/archive/r1.tar.gz"
  sha256 "bca09707018b2011e6300900006d71b21b2290c4bd8ba34b27c844d6ff03b6d6"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DePan.git"

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
