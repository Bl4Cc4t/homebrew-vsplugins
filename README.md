homebrew-vsplugins
==================

This repository is a way to automate the installation of plugins for [VapourSynth](https://github.com/vapoursynth/vapoursynth).

Installation
------------

Having the package manager [Homebrew](https://brew.sh/) installed is mandatory (duh).

To begin, tap this repo: `brew tap bl4cc4t/vsplugins`.

To install a plugin, simply use `brew install vsp-<pluginname>`

I added the prefix “vsp-” for the ease of linking afterwards. Apart from that, it’s more tidy this way :)


Linking
-------

Since most of the plugins do not appear under `/usr/local/lib/vapoursynth` automatically, doing so requires an extra step.
(It’s impossible to link during the installation via hombrew due to some restrictions when using third party taps).

To link the plugins, please download the file `linkvsp.sh` and execute the following two commands:

```
chmod 4511 linkvsp.sh
./linkvsp.sh
```

List of Plugins
---------------

-[d2vsource](https://github.com/dwbuiten/d2vsource)
-[ffms2](https://github.com/FFMS/ffms2)
-[flash3kyuu_deband](https://github.com/SAPikachu/flash3kyuu_deband)
-[mvtools](https://github.com/dubhater/vapoursynth-mvtools)
-[znedi3](https://github.com/sekrit-twc/znedi3)
