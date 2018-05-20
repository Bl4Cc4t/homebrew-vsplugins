class VspKnlmeanscl < Formula
  desc "An optimized OpenCL implementation of the Non-local means de-noising algorithm"
  homepage "https://github.com/Khanattila/KNLMeansCL"
  version "1.1.1"
  url "https://github.com/Khanattila/KNLMeansCL/archive/v1.1.1.tar.gz"
  sha256 "9e0df80c64cc48a522f37e3f6e4edafe8eba22c0f78bcc8f54fbfbe9e30aa479"
  head "https://github.com/Khanattila/KNLMeansCL.git"

  def install
    Dir.chdir("#{buildpath}/build/unix")
    system "./autogen.sh"
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
  def post_install
    ohai ""
    ohai "When you’re done installing plugins:"
    ohai "Please run linkvsp.sh to link the libraries."
  end
end