#!/bin/bash
# linkvsp.sh by Bl4Cc4t (2018)
# checking for symlinks of vapoursynth plugins and adding them

ctr=0
for d in $(find /usr/local/Cellar -type d -name "vsp-*"); do
  echo "Found $(basename $d)!"
  for f in $d/*/lib/*; do
    fn=$(basename $f)
    if [ ! -e /usr/local/lib/vapoursynth/$fn ]; then
      echo "Missing symlink: $fn"
      ln -s $f /usr/local/lib/vapoursynth/$fn
      ctr=$((ctr+1))
    fi
  done
done
echo "Added $ctr symlinks."
