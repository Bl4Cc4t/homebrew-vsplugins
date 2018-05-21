class VspMvtools < Formula
  desc "Motion compensation and stuff"
  homepage "https://github.com/dubhater/vapoursynth-mvtools"
  version "19"
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
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
  def post_install
    ohai ""
    ohai "When you’re done installing plugins:"
    ohai "Please run linkvsp.sh to link the libraries:"
    ohai "`/usr/local/Homebrew/Library/Taps/bl4cc4t/homebrew-vsplugins/linkvsp.sh`"
  end
end
