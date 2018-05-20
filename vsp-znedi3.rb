class VspZnedi3 < Formula
  desc "nnedi3 filter"
  homepage "https://github.com/sekrit-twc/znedi3"
  version "r1"
  #url "https://github.com/sekrit-twc/znedi3/archive/r1.tar.gz"
  sha256 "5a0a00f3783ececf3d430cdafea6bd7815a1a4c01ea2a8a19b01ae8a4e2d031d"
  head "https://github.com/sekrit-twc/znedi3.git"

  patch do
    url "https://raw.githubusercontent.com/Bl4Cc4t/homebrew-vsplugins/master/modified-installations/patches/vsp-znedi3.patch"
    sha256 "7f54acbd369ef126e47f96a68c9bb1b5fca4f0f27437e21e00352b8dd4980a1f"
  end

  depends_on "libtool" => :build
  depends_on "vapoursynth"

  def install
    system "make", "X86=1"
    system "mkdir", "-p", "#{lib}"
    system "make", "install"
  end
  def post_install
    ohai "When you’re done installing plugins:"
    ohai "Please run linkvsp.sh to link the libraries."
  end
end
