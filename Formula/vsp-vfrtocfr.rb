class VspVfrtocfr < Formula
  desc "Vapoursynth port of VFRToCFR"
  homepage "https://github.com/Irrational-Encoding-Wizardry/Vapoursynth-VFRToCFR"
  # version "r2"
  # url "https://github.com/Irrational-Encoding-Wizardry/Vapoursynth-VFRToCFR/archive/v1.0.tar.gz"
  # sha256 "d0bfc415c9bcca0711a19f72f249280de53c93440e1a61bf907d6ebe5a7bfe85"
  head "https://github.com/Irrational-Encoding-Wizardry/Vapoursynth-VFRToCFR.git"

  depends_on "meson" => :build
  depends_on "vapoursynth"

  def install
    (buildpath"/build").mkpath
    Dir.chdir("#{buildpath}/build")
    system "meson", "--prefix #{prefix} --buildtype release .."
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
