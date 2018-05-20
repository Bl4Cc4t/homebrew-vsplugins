class VspAddgrain < Formula
  desc "VapourSynth port of AddGrainC"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-AddGrain"
  version "r5"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-AddGrain/archive/r5.tar.gz"
  sha256 "c428d05fb4705616dc9c6fbe5f57b3216e3fb7b9c1cdf6094dfdc85d4eb0b5be"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-AddGrain.git"

  # depends_on "libtool" => :build
  # depends_on "pkg-config" => :build
  # depends_on "vapoursynth"

  def install
    system "./configure"
    system "make"
    prefix.install Dir["*.md"]
    lib.install Dir["*.dylib"]
  end
  def post_install
    ohai ""
    ohai "When you’re done installing plugins:"
    ohai "Please run linkvsp.sh to link the libraries."
  end
end
