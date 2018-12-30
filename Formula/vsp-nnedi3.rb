class VspNnedi3 < Formula
  desc "nnedi3 filter for VapourSynth"
  homepage "https://github.com/dubhater/vapoursynth-nnedi3"
  version "12"
  url "https://github.com/dubhater/vapoursynth-nnedi3/archive/v12.tar.gz"
  sha256 "235f43ef4aac04ef2f42a8c44c2c16b077754a3e403992df4b87c8c4b9e13aa5"
  head "https://github.com/dubhater/vapoursynth-nnedi3.git"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "pkg-config" => :build
  depends_on "libtool" => :build
  depends_on "yasm" => :build
  depends_on "vapoursynth"

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
