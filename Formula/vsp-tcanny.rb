class VspTcanny < Formula
  desc "VapourSynth port of tcanny"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TCanny"
  version "r11"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TCanny/archive/r11.tar.gz"
  sha256 "01219e14afe962fbf53870e6ac04cb3d75265b9443f3fba522c3a67aa6063e17"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TCanny.git"

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
