class VspKnlmeanscl < Formula
  desc "An optimized OpenCL implementation of the Non-local means de-noising algorithm"
  homepage "https://github.com/Khanattila/KNLMeansCL"
  version "1.1.1"
  url "https://github.com/Khanattila/KNLMeansCL/archive/v1.1.1.tar.gz"
  sha256 "9e0df80c64cc48a522f37e3f6e4edafe8eba22c0f78bcc8f54fbfbe9e30aa479"
  head "https://github.com/Khanattila/KNLMeansCL.git"

  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "pkg-config" => :build
  depends_on "vapoursynth"
  depends_on "zimg"

  def install
    inreplace "meson.build",
              "install_dir : join_paths(get_option('prefix'), get_option('libdir'), 'vapoursynth')",
              "install_dir : '#{lib}'"
    system "meson", "build"
    system "ninja", "-C", "build"
    system "ninja", "-C", "build", "install"
    # works with 1.1.1:
    # inreplace "./configure" do |s|
    #   s.gsub! ",-read_only_relocs,suppress -Wl", ""
    #   s.gsub! "strip", "strip -x"
    # end
    # system "./configure", "--install=#{lib}"
    # system "make", "install"
  end
  def post_install
    ohai ""
    ohai "When you’re done installing plugins:"
    ohai "Please run linkvsp.sh to link the libraries:"
    ohai "`/usr/local/Homebrew/Library/Taps/bl4cc4t/homebrew-vsplugins/linkvsp.sh`"
  end
end
