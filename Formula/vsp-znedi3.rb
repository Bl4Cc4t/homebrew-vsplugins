class VspZnedi3 < Formula
  desc "nnedi3 filter"
  homepage "https://github.com/sekrit-twc/znedi3"
  #version "r1"
  #url "https://github.com/sekrit-twc/znedi3/archive/r1.tar.gz"
  sha256 "5a0a00f3783ececf3d430cdafea6bd7815a1a4c01ea2a8a19b01ae8a4e2d031d"
  head "https://github.com/sekrit-twc/znedi3.git"

  depends_on "libtool" => :build
  depends_on "vapoursynth"

  def install
    inreplace "Makefile" do |s|
      s.gsub! "vsznedi3.so", "vsznedi3.dylib"
      s.gsub! "shared", "dynamiclib"
    end
    system "make", "X86=1"
    system "mkdir", "-p", "#{lib}"
    prefix.mkpath
    prefix.install Dir["*.txt"]
    prefix.install Dir["*.rst"]
    lib.install Dir["*.bin"]
    lib.install Dir["*.dylib"]
  end
  def post_install
    ohai ""
    ohai "When you’re done installing plugins:"
    ohai "Please run linkvsp.sh to link the libraries."
  end
end
