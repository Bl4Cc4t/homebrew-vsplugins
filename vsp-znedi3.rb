class VspZnedi3 < Formula
  desc "nnedi3 filter"
  homepage "https://github.com/sekrit-twc/znedi3"
  version "r1"
  #url "https://github.com/sekrit-twc/znedi3/archive/r1.tar.gz"
  sha256 "5a0a00f3783ececf3d430cdafea6bd7815a1a4c01ea2a8a19b01ae8a4e2d031d"
  head "https://github.com/sekrit-twc/znedi3.git"

  patch do
    url "https://raw.githubusercontent.com/Bl4Cc4t/homebrew-vsplugins/master/modified-installations/patches/vsp-znedi3.patch"
    sha256 "8f4f3f8c63cbe9695424ff54516cf2163b78e69b44f3b8a7c5a752ad686323fb"
  end

  depends_on "libtool" => :build
  depends_on "cmake" => :build
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
