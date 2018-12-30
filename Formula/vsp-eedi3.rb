class VspEedi3 < Formula
  desc "VapourSynth port of EEDI3"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-EEDI3"
  version "r4"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-EEDI3/archive/r4.tar.gz"
  sha256 "c4d758e0e5a4b0d1b84cd4f78d64a99e992b4e657cf71e3a7be42fdeb1bbf996"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-EEDI3.git"

  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "pkg-config" => :build
  depends_on "boost" => :build
  depends_on "vapoursynth"

  def install
    inreplace "meson.build",
              "install_dir : join_paths(vapoursynth_dep.get_pkgconfig_variable('libdir'), 'vapoursynth')",
              "install_dir : #{prefix}"
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
