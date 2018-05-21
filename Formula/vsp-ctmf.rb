class VspCtmf < Formula
  desc "Constant Time Median Filtering"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-CTMF"
  version "r4"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-CTMF/archive/r4.tar.gz"
  sha256 "5454345969e8b5550c397c5952334fd140b3920ecc566103c2b491c5e693d2d3"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-CTMF.git"

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
