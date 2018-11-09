class VspRemapframes < Formula
  desc "Vapoursynth port of RemapFrames"
  homepage "https://github.com/Irrational-Encoding-Wizardry/Vapoursynth-RemapFrames"
  # version "1.0"
  # url "https://github.com/Irrational-Encoding-Wizardry/Vapoursynth-RemapFrames/archive/v1.0.tar.gz"
  head "https://github.com/Irrational-Encoding-Wizardry/Vapoursynth-RemapFrames.git"

  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "pkg-config" => :build
  depends_on "vapoursynth"

  def install
    # system "meson", "configure", "-Dcpp_std=c++11"
    (buildpath/"build").mkpath
    Dir.chdir("#{buildpath}/build")
    system "meson", "--prefix #{prefix}",
                    "--buildtype release .."
    system "ninja"
    system "ninja", "install"
  end
  def post_install
    ohai ""
    ohai "When you’re done installing plugins:"
    ohai "Please run linkvsp.sh to link the libraries:"
    ohai "`/usr/local/Homebrew/Library/Taps/bl4cc4t/homebrew-vsplugins/linkvsp.sh`"
  end
end
