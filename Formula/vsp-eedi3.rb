class VspEedi3 < Formula
  desc "VapourSynth port of EEDI3"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-EEDI3"
  version "r3"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-EEDI3/archive/r3.tar.gz"
  sha256 "a522f3e8709cc2e07d1acac14050a08357393e9352572076cee9ea7793188650"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-EEDI3.git"

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
