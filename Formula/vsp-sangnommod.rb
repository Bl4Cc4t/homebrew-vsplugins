class VspSangnommod < Formula
  desc "SangNom2 Plugin Ported for VapourSynth. Beat by James1201 on https://bitbucket.org/James1201/vapoursynth-sangnom/ "
  homepage "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-SangNomMod"
  # version "0.1-fix"
  # url "https://github.com/HomeOfVapourSynthEvolution/VapourSynth-SangNomMod/archive/v0.1-fix.tar.gz"
  # sha256 "ca918925a8bcbb2ad5318596db57110375da53128eb299e9b540a1d16e300000"
  head "https://github.com/Bl4Cc4t/VapourSynth-SangNomMod.git"

  depends_on "pkg-config" => :build
  depends_on "vapoursynth"
  depends_on "zimg"

  def install
    system "./configure", "--install=#{lib}"
    system "make", "install"
  end
  def post_install
    ohai ""
    ohai "When you’re done installing plugins:"
    ohai "Please run linkvsp.sh to link the libraries."
  end
end
