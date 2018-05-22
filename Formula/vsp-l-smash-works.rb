class VspLSmashWorks < Formula
  desc "Works based on L-SMASH project"
  homepage "https://github.com/VFR-maniac/L-SMASH-Works"
  head "https://github.com/VFR-maniac/L-SMASH-Works.git"

  depends_on "vapoursynth"
  depends_on "l-smash"

  def install
    Dir.chdir(buildpath/"VapourSynth")
    system "./configure", "--prefix=#{prefix}",
                          "--vs-plugindir=."
    system "make", "install"
  end
  def post_install
    ohai ""
    ohai "When you’re done installing plugins:"
    ohai "Please run linkvsp.sh to link the libraries:"
    ohai "`/usr/local/Homebrew/Library/Taps/bl4cc4t/homebrew-vsplugins/linkvsp.sh`"
  end
end
