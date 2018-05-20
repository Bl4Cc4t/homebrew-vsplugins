class VspZnedi3 < Formula
  desc "nnedi3 filter"
  homepage "https://github.com/sekrit-twc/znedi3"
  version "r1"
  #url "https://github.com/sekrit-twc/znedi3/archive/r1.tar.gz"
  sha256 "5a0a00f3783ececf3d430cdafea6bd7815a1a4c01ea2a8a19b01ae8a4e2d031d"
  head "https://github.com/sekrit-twc/znedi3.git"

  patch do
    url "https://raw.githubusercontent.com/Bl4Cc4t/homebrew-vsplugins/master/modified-installations/patches/vsp-znedi3.patch"
    sha256 "16cd011baa8241ba9c562a605f5bb88aabfd5b9a7da17e1a01a75e10fc419ff7"
  end

  depends_on "libtool" => :build
  depends_on "vapoursynth"

  def install
    system "make", "X86=1"
    system "make", "install"
  end
  def post_install
    ohai "When you’re done installing plugins:"
    ohai "Please run linkvsp.sh to link the libraries."
  end
end
