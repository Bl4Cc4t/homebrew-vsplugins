class VspDegrainmedian < Formula
  desc "Spatio-temporal limited median denoiser"
  homepage "https://github.com/dubhater/vapoursynth-degrainmedian"
  version "1"
  url "https://github.com/dubhater/vapoursynth-degrainmedian/archive/v1.tar.gz"
  sha256 "f793098515e62974c59c52075f8378dcb96286661e17b318a224d77caaa092f0"
  head "https://github.com/dubhater/vapoursynth-degrainmedian.git"

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
