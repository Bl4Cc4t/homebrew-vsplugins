class VspTcomb < Formula
  desc ""
  homepage "https://github.com/dubhater/vapoursynth-tcomb"
  version "3"
  url "https://github.com/dubhater/vapoursynth-tcomb/archive/v3.tar.gz"
  sha256 "81bee76fc83347cabb51aa23fbad664738e52beb31184179cc68c09c185a462c"
  head "https://github.com/dubhater/vapoursynth-tcomb.git"

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
