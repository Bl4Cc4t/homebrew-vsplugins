class VspScrawl < Formula
  desc "Simple text output plugin for VapourSynth"
  homepage "https://github.com/dubhater/vapoursynth-scrawl"
  version "1.0"
  url "https://github.com/dubhater/vapoursynth-scrawl/archive/v1.0.tar.gz"
  sha256 "ea0b0b2e60cf5d5f713b7cb8f13adc436c7c5f14ac819c75ec310044de23ab95"
  head "https://github.com/dubhater/vapoursynth-scrawl.git"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "pkg-config" => :build
  depends_on "libtool" => :build
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
