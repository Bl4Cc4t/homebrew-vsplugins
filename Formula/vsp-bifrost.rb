class VspBifrost < Formula
  desc "Bifrost plugin for Vapoursynth (and Avisynth)"
  homepage "https://github.com/dubhater/vapoursynth-bifrost"
  version "2.2"
  url "https://github.com/dubhater/vapoursynth-bifrost/archive/v2.2.tar.gz"
  sha256 "413dd2244724404a29a7b5828e0fb341c950760b634837ce45df51c0c9afe72a"
  head "https://github.com/dubhater/vapoursynth-bifrost.git"

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
