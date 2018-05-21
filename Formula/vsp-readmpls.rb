class VspReadmpls < Formula
  desc "Reads a mpls file and returns a dictionary, not a clip."
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-ReadMpls"
  version "r3"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-ReadMpls/archive/r3.tar.gz"
  sha256 "828df356f5e41c9ca04b53d067ad7acb7413e8fc4f07cbadc02747fe35453660"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-ReadMpls.git"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "pkg-config" => :build
  depends_on "libtool" => :build
  depends_on "libbluray" => :build
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
