class VspDamb < Formula
  desc "Basic audio support for VapourSynth"
  homepage "https://github.com/dubhater/vapoursynth-damb"
  version "3"
  url "https://github.com/dubhater/vapoursynth-damb/archive/v3.tar.gz"
  sha256 "b6c86dd9d2849a0d063eff79709977a064758f0ea4dceb47f0813339165acef9"
  head "https://github.com/dubhater/vapoursynth-damb.git"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "pkg-config" => :build
  depends_on "libtool" => :build
  depends_on "vapoursynth"
  depends_on "libsndfile"

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
