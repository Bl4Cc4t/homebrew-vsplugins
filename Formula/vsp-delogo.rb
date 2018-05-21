class VspDelogo < Formula
  desc "DeLogo Plugin Ported for VapourSynth"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DeLogo"
  version "0.4"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DeLogo/archive/v0.4.tar.gz"
  sha256 "385a740cbaf4f4d28fb17b4929ea10fe75f4f733f54594882ef01f847acfff3d"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DeLogo.git"

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
    ohai "Please run linkvsp.sh to link the libraries:"
    ohai "`/usr/local/Homebrew/Library/Taps/bl4cc4t/homebrew-vsplugins/linkvsp.sh`"
  end
end
