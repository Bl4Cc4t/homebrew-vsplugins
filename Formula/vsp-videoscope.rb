class VspVideoscope < Formula
  desc "Videoscope plugin for VapourSynth"
  homepage "https://github.com/dubhater/vapoursynth-videoscope"
  version "1.0"
  url "https://github.com/dubhater/vapoursynth-videoscope/archive/v1.0.tar.gz"
  sha256 "2ae3edb24a95f714e4434050b670b0ae5b8d542e30ebfafa38a853a049ff926f"
  head "https://github.com/dubhater/vapoursynth-videoscope.git"

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
