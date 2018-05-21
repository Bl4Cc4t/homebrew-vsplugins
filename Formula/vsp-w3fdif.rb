class VspW3fdif < Formula
  desc "VapourSynth port of W3FDIF"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-W3FDIF"
  version "r1"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-W3FDIF/archive/r1.tar.gz"
  sha256 "64de84f69a0fc5832103410477fc5c09993f279e3ceb0ca989f6c4bd44537c7a"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-W3FDIF.git"

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
