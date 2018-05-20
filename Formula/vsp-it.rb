class VspIt < Formula
  desc "Inverse Telecine Plugin Ported for VapourSynth"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-IT"
  version "1.2"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-IT/archive/v1.2.tar.gz"
  sha256 "4f354c1d215e6b30087d68a116e73f6fce24eb99d4fe788b6dc1fb9f4b00cfff"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-IT.git"

  depends_on "vapoursynth"

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
