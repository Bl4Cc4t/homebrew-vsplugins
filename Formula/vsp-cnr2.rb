class VspCnr2 < Formula
  desc "Chroma noise reducer"
  homepage "https://github.com/dubhater/vapoursynth-cnr2"
  version "1"
  url "https://github.com/dubhater/vapoursynth-cnr2/archive/v1.tar.gz"
  sha256 "96187066c38fc7f280767240d2665e187495f583f23900127cdc9ed236fc2fcd"
  head "https://github.com/dubhater/vapoursynth-cnr2.git"

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
