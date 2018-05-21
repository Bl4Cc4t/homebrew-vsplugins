class VspFillborders < Formula
  desc "Fills the borders of a clip"
  homepage "https://github.com/dubhater/vapoursynth-fillborders"
  version "1.0"
  url "https://github.com/dubhater/vapoursynth-fillborders/archive/v1.0.tar.gz"
  sha256 "4e9b9107f7c462dca05e82788a1131ffe6339429eda248d4a594538a14f25be3"
  head "https://github.com/dubhater/vapoursynth-fillborders.git"

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
