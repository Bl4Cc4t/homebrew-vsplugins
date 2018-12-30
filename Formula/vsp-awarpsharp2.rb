class VspAwarpsharp2 < Formula
  desc "Sharpens by warping"
  homepage "https://github.com/dubhater/vapoursynth-awarpsharp2"
  version "4"
  url "https://github.com/dubhater/vapoursynth-awarpsharp2/archive/v4.tar.gz"
  sha256 "b22102694ee68d43b9bdbf5584856e024a0ace00e95da2f4e1e3b82524d16c4c"
  head "https://github.com/dubhater/vapoursynth-awarpsharp2.git"

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
