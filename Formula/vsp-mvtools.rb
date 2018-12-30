class VspMvtools < Formula
  desc "Motion compensation and stuff"
  homepage "https://github.com/dubhater/vapoursynth-mvtools"
  version "20"
  url "https://github.com/dubhater/vapoursynth-mvtools/archive/v20.tar.gz"
  sha256 "9a1bc87b9bad6642dd7d69b1b6e200c1d962ef55fc2787581e5d2cb437aa0b23"
  head "https://github.com/dubhater/vapoursynth-mvtools.git"

  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "pkg-config" => :build
  depends_on "yasm" => :build
  depends_on "vapoursynth"
  depends_on "fftw"

  def install
    system "meson", "--prefix", "#{prefix}", "build"
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
