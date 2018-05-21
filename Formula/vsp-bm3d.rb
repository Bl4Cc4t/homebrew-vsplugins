class VspBm3d < Formula
  desc "BM3D denoising filter for VapourSynth"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-BM3D"
  version "r7"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-BM3D/archive/r7.tar.gz"
  sha256 "b7cc12744e5e49ec765c565b2c1f576f75ea51553bf302c8b064f6d9213c9d07"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-BM3D.git"

  depends_on "pkg-config" => :build
  depends_on "vapoursynth"
  depends_on "zimg"
  depends_on "fftw"

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
