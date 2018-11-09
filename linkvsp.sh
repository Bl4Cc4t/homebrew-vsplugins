#!/bin/bash
# linkvsp.sh by Bl4Cc4t (2018)
# checking for symlinks of vapoursynth plugins and adding them

mkdir -p "$HOME/Library/Application Support/VapourSynth"
echo "SystemPluginDir=/usr/local/lib/vapoursynth" > "$HOME/Library/Application Support/VapourSynth/vapoursynth.conf"
ctr=0
for d in $(find /usr/local/Cellar -type d -name "vsp-*"); do
  #echo "Found $(basename $d)!"
  for f in $d/*/lib/*; do
    if [[ ! -L $f && -f $f ]]; then
      fn=$(basename $f)
      if [ ! -e /usr/local/lib/vapoursynth/$fn ]; then
        echo "Found missing symlink: $fn"
        ln -s $f /usr/local/lib/vapoursynth/$fn
        ctr=$((ctr+1))
      fi
    fi
  done
done
echo "Added $ctr symlinks."
