class VspD2vsource < Formula
  desc "D2V parser and decoder for VapourSynth"
  homepage "https://github.com/dwbuiten/d2vsource"
  version "1.1"
  url "https://github.com/dwbuiten/d2vsource/archive/v1.1.tar.gz"
  sha256 "e7c33a7bfde29c5f539a9c7e78c14c43b3c8248b861eee0845f6c77081b7fd77"
  head "https://github.com/dwbuiten/d2vsource.git"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "pkg-config" => :build
  depends_on "vapoursynth"
  depends_on "ffmpeg"

  stable do
  # fixed in 99b10e3:
    inreplace "src/core/d2v.hpp", "FF_IDCT_XVIDMMX", "FF_IDCT_XVID"
    inreplace "ret->avctx->flags |= CODEC_FLAG_EMU_EDGE;" "//ret->avctx->flags |= CODEC_FLAG_EMU_EDGE;"
  end
  
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
