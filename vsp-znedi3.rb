class VspZnedi3 < Formula
  desc "nnedi3 filter"
  homepage "https://github.com/sekrit-twc/znedi3"
  version "r1"
  #url "https://github.com/sekrit-twc/znedi3/archive/r1.tar.gz"
  sha256 "5a0a00f3783ececf3d430cdafea6bd7815a1a4c01ea2a8a19b01ae8a4e2d031d"
  head "https://github.com/sekrit-twc/znedi3.git"

  depends_on "libtool" => :build
  #depends_on "cmake" => :build
  depends_on "vapoursynth"

  def install
    inreplace "Makefile" do |s|
      s.gsub! "vsznedi3.so", "vsznedi3.dylib"
      s.gsub! "-shared $(MY_LDFLAGS) $^ $(MY_LIBS) -o $@", "-dynamiclib $(MY_LDFLAGS) $^ $(MY_LIBS) -o #{lib}/$@"
    end
    system "make", "X86=1"
    ohai "When you’re done installing plugins:"
    ohai "Please run linkvsp.sh to link the libraries."
  end
end
