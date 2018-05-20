class VspAddgrain < Formula
  desc "VapourSynth port of AddGrainC"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-AddGrain"
  version "r5"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-AddGrain/archive/r5.tar.gz"
  sha256 "c428d05fb4705616dc9c6fbe5f57b3216e3fb7b9c1cdf6094dfdc85d4eb0b5be"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-AddGrain.git"

  depends_on "vapoursynth"
  depends_on "zimg"

  def install
    ENV['PREFIX'] = "#{prefix}"
    system "./configure"
    system "make"
  end
  def post_install
    ohai ""
    ohai "When you’re done installing plugins:"
    ohai "Please run linkvsp.sh to link the libraries."
  end
end
