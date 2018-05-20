class VspBilateral < Formula
  desc "Bilateral filter for VapourSynth."
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Bilateral"
  # version "r3"
  # url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Bilateral/archive/r3.tar.gz"
  # sha256 "d652cc9406b03786a8248cb46ceb51db96ab9b57665aa6ca4ff7c83aa108b305"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Bilateral.git"

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
