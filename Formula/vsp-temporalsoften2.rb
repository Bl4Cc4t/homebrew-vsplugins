class VspTemporalsoften2 < Formula
  desc "Temporal denoising filter"
  homepage "https://github.com/dubhater/vapoursynth-temporalsoften2"
  version "1"
  url "https://github.com/dubhater/vapoursynth-temporalsoften2/archive/v1.tar.gz"
  sha256 "fa4663c9a3e00338fd9fde7a2f61e51d24a18f9727317b7bc7f4bc6d0a0fda99"
  head "https://github.com/dubhater/vapoursynth-temporalsoften2.git"

  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "pkg-config" => :build
  depends_on "boost" => :build
  depends_on "vapoursynth"

  def install
    system "meson", "--prefix", "#{prefix}", "build"
    system "ninja", "-C", "build"
    system "ninja", "-C", "build", "install"
  end
  def post_install
    ohai ""
    ohai "When you’re done installing plugins:"
    ohai "Please run linkvsp.sh to link the libraries:"
    ohai "`/usr/local/Homebrew/Library/Taps/bl4cc4t/homebrew-vsplugins/linkvsp.sh`"
  end
end
