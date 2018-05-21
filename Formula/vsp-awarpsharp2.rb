class VspAwarpsharp2 < Formula
  desc "Sharpens by warping"
  homepage "https://github.com/dubhater/vapoursynth-awarpsharp2"
  version "3"
  url "https://github.com/dubhater/vapoursynth-awarpsharp2/archive/v3.tar.gz"
  sha256 "a489d6fd4d45ce64e2fa48057acdba1c6198870f87608d4e71ca658de3f45159"
  head "https://github.com/dubhater/vapoursynth-awarpsharp2.git"

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
