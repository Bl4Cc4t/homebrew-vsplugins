class VspVaguedenoiser < Formula
  desc "VapourSynth port of VagueDenoiser"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-VagueDenoiser"
  version "r2"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-VagueDenoiser/archive/r2.tar.gz"
  sha256 "6ab078af2cabf72f0804faddb44c330b8b99c355f32a926d84dd5bba6ec6fcae"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-VagueDenoiser.git"

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
