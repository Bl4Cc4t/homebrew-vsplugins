class VspVmaf < Formula
  desc "Video Multi-Method Assessment Fusion"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-VMAF"
  version "r2.1"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-VMAF/archive/r2.1.tar.gz"
  sha256 "18ab2ed57972a0522a17fbaa6977086df3e1f2231d07c600516d36b39551fd3a"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-VMAF.git"

  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "pkg-config" => :build
  depends_on "boost" => :build
  depends_on "vapoursynth"
  depends_on "libvmaf"

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
