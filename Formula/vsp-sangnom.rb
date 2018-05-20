class VspSangnom < Formula
  desc "VapourSynth Single Field Deinterlacer"
  homepage "https://bitbucket.org/James1201/vapoursynth-sangnom"
  # version "r40"
  # url "https://bitbucket.org/James1201/vapoursynth-sangnom/get/default.tar.gz"
  # sha256 "b78ba8edd6a7d856c0606de822111095e64b1f4d8cbbc311a5c52cca62d6137b"
  head "https://bitbucket.org/James1201/vapoursynth-sangnom", :using => :hg

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "pkg-config" => :build
  depends_on "libtool" => :build
  depends_on "vapoursynth"

  def install
    system "chmod", "0555", "./autogen.sh"
    system "./autogen.sh"
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
  def post_install
    ohai "Linking via linkvsp.sh …"
    system "/usr/local/Homebrew/Library/Taps/bl4cc4t/homebrew-vsplugins/linkvsp.sh"
  end
end
