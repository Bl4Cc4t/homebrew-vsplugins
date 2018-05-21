class VspScxvid < Formula
  desc "Scene change detection plugin for VapourSynth, using xvid"
  homepage "https://github.com/dubhater/vapoursynth-scxvid"
  version "1"
  url "https://github.com/dubhater/vapoursynth-scxvid/archive/v1.tar.gz"
  sha256 "de84d9b73021e7a2084213b3169ae0572f6c938a30947d96955ec9e3f21a9cb2"
  head "https://github.com/dubhater/vapoursynth-scxvid.git"

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
