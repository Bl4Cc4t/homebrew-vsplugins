class VspMsmoosh < Formula
  desc "MSharpen and MSmooth for VapourSynth"
  homepage "https://github.com/dubhater/vapoursynth-msmoosh"
  version "1.1"
  url "https://github.com/dubhater/vapoursynth-msmoosh/archive/v1.1.tar.gz"
  sha256 "f49b4a00f141b245040ce1ffce00c79880da0118078d5c8f26d9a654fb028ddc"
  head "https://github.com/dubhater/vapoursynth-msmoosh.git"

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
