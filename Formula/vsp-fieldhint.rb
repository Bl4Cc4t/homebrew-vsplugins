class VspSFieldhint < Formula
  desc "SSIQ filter for VapourSynth"
  homepage "https://github.com/dubhater/vapoursynth-ssiq"
  version "1.0"
  url "https://github.com/dubhater/vapoursynth-ssiq/archive/v1.0.tar.gz"
  sha256 "25dfee8f13a5358d9284899bd640e8a102c0e82ad1278284e418575c625a9ab9"
  head "https://github.com/dubhater/vapoursynth-ssiq.git"

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
