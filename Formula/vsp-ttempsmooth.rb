class VspTtempsmooth < Formula
  desc "VapourSynth port of TTempSmooth"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TTempSmooth"
  version "r3.1"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TTempSmooth/archive/r3.1.tar.gz"
  sha256 "c68db30aad8e596969bf47c7c95c1375ec86659f377ff0e3adb5f566b83f5a59"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TTempSmooth.git"

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
