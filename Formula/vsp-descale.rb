class VspWwxd < Formula
  desc "VapourSynth plugin to undo upscaling"
  homepage "https://github.com/Irrational-Encoding-Wizardry/vapoursynth-descale"
  version "r2"
  url "https://github.com/Irrational-Encoding-Wizardry/vapoursynth-descale/archive/r2.tar.gz"
  sha256 "0aca65474520efbe5d6e804b6b0481fef95be5cb3c9f7b926a3751047952c500"
  head "https://github.com/Irrational-Encoding-Wizardry/vapoursynth-descale.git"

  depends_on "vapoursynth"

  def install
    system "g++ -std=c++11 -shared -dynamiclib  -fPIC -O2 descale.cpp -o libdescale.dylib"
    lib.install Dir["*.dylib"]
  end
  def post_install
    ohai ""
    ohai "When you’re done installing plugins:"
    ohai "Please run linkvsp.sh to link the libraries:"
    ohai "`/usr/local/Homebrew/Library/Taps/bl4cc4t/homebrew-vsplugins/linkvsp.sh`"
  end
end
