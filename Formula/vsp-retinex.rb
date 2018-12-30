class VspRetinex < Formula
  desc "Retinex algorithm for VapourSynth"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Retinex"
  version "r4"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Retinex/archive/r4.tar.gz"
  sha256 "979b1f8d0dc04a5501a4393873bff538ead5d2c822a0a29a10de02c146e77e8c"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Retinex.git"

  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "pkg-config" => :build
  depends_on "boost" => :build
  depends_on "vapoursynth"
  depends_on "zimg"

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
