class VspFmtconv < Formula
  desc "Format conversion tools for Vapoursynth"
  homepage "https://github.com/EleonoreMizo/fmtconv"
  version "r20"
  url "https://github.com/EleonoreMizo/fmtconv/archive/r20.tar.gz"
  sha256 "44f2f2be05a0265136ee1bb51bd08e5a47c6c1e856d0d045cde5a6bbd7b4350c"
  head "https://github.com/EleonoreMizo/fmtconv.git"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "pkg-config" => :build
  depends_on "libtool" => :build
  depends_on "vapoursynth"

  def install
    Dir.chdir("#{buildpath}/build/unix")
    system "./autogen.sh"
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
  def post_install
    ohai ""
    ohai "When you’re done installing plugins:"
    ohai "Please run linkvsp.sh to link the libraries."
  end
end
