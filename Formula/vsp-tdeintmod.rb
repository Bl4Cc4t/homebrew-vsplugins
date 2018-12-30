class VspTdeintmod < Formula
  desc "VapourSynth port of TDeint + TMM"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TDeintMod"
  version "r10.1"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TDeintMod/archive/r10.1.tar.gz"
  sha256 "0d17d9998251c13e79412f70bc7b28480be6fb419cf31cee24d4c35be0a1ac85"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TDeintMod.git"

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
