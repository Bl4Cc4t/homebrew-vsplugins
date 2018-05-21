class VspFfms2 < Formula
  desc "Libav/ffmpeg based source library and Avisynth plugin"
  homepage "https://github.com/FFMS/ffms2"
  version "2.23"
  url "https://github.com/FFMS/ffms2/archive/2.23.tar.gz"
  sha256 "b09b2aa2b1c6f87f94a0a0dd8284b3c791cbe77f0f3df57af99ddebcd15273ed"
  head "https://github.com/FFMS/ffms2.git"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "pkg-config" => :build
  depends_on "ffmpeg"

  def install
    system "./autogen.sh"
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--enable-avresample"
    system "make", "install"
  end
  def post_install
    ohai ""
    ohai "When you’re done installing plugins:"
    ohai "Please run linkvsp.sh to link the libraries:"
    ohai "`/usr/local/Homebrew/Library/Taps/bl4cc4t/homebrew-vsplugins/linkvsp.sh`"
  end
end
