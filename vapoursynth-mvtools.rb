class VapoursynthMvtools < Formula
  desc "Motion compensation and stuff"
  homepage "https://github.com/dubhater/vapoursynth-mvtools"
  url "https://github.com/dubhater/vapoursynth-mvtools/archive/v19.tar.gz"
  sha256 "41848bf526f1807e6894513534d5243bbce5b796d798a3cf47f617229d7b6e9e"
  head "https://github.com/dubhater/vapoursynth-mvtools.git"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "pkg-config" => :build
  depends_on "yasm" => :build
  depends_on "vapoursynth"
  depends_on "fftw"

  def install
    system "./autogen.sh"
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
    #ln_sf Dir[lib/"*.dylib"], (HOMEBREW_PREFIX/"lib/vapoursynth")
    (HOMEBREW_PREFIX/"lib/vapoursynth").install_symlink Dir[lib/"*.dylib"]
    #system "ln", "-s", lib/"*.dylib", HOMEBREW_PREFIX/"lib/vapoursynth"
  end
end
