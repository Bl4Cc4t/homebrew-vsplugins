class VspWaifu2xCaffe < Formula
  desc "waifu2x by Caffe for VapourSynth"
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Waifu2x-caffe"
  version "r9"
  url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Waifu2x-caffe/archive/r9.tar.gz"
  sha256 "681e9fba46b6016ff06aa914688734226e0f644ef8de51f2511fc7832e1797be"
  head "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Waifu2x-caffe.git"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "pkg-config" => :build
  
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
    ohai "Please run linkvsp.sh to link the libraries."
  end
end
