class VspYadifmod < Formula
  desc "VapourSynth port of yadifmod"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Yadifmod"
  version "r10.1"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Yadifmod/archive/r10.1.tar.gz"
  sha256 "7d4862c285ce4252b6e55cb0499668be1867adee2327fbbf36ebb56d1804b2ba"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Yadifmod.git"

  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "pkg-config" => :build
  depends_on "boost" => :build
  depends_on "vapoursynth"

  def install
    inreplace "meson.build",
              "install_dir : join_paths(vapoursynth_dep.get_pkgconfig_variable('libdir'), 'vapoursynth')",
              "install_dir : '#{lib}'"
    system "meson", "build"
    system "ninja", "-C", "build"
    system "ninja", "-C", "build", "install"
  end
  def post_install
    ohai ""
    ohai "When you’re done installing plugins:"
    ohai "Please run linkvsp.sh to link the libraries:"
    ohai "`/usr/local/Homebrew/Library/Taps/bl4cc4t/homebrew-vsplugins/linkvsp.sh`"
  end
end
