class VspFluxsmooth < Formula
  desc "A filter for smoothing of fluctuations"
  homepage "https://github.com/dubhater/vapoursynth-fluxsmooth"
  version "2"
  url "https://github.com/dubhater/vapoursynth-fluxsmooth/archive/v2.tar.gz"
  sha256 "975bdf16ec52c9d3ebfd487db10799c0ccb8f8c5e0e70d48df0f8067c5f24fcb"
  head "https://github.com/dubhater/vapoursynth-fluxsmooth.git"

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
