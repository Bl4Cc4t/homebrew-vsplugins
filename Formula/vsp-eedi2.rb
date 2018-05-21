class VspEedi2 < Formula
  desc "VapourSynth port of EEDI2"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-EEDI2"
  version "r7"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-EEDI2/archive/r7.tar.gz"
  sha256 "fd1ee1970b86e209440311b98ec326c30a072f1722a43294078f41be0fd7e374"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-EEDI2.git"

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
    ohai "Please run linkvsp.sh to link the libraries."
  end
end
