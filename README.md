homebrew-vsplugins
==================

This repository is a way to automate the installation of plugins for [VapourSynth](https://github.com/vapoursynth/vapoursynth).

Installation
------------

Having the package manager [Homebrew](https://brew.sh/) installed is mandatory (duh).

To begin, tap this repo: `brew tap bl4cc4t/vsplugins`.

To install a plugin, simply use `brew install vsp-<pluginname>`

I added the prefix “vsp-” for the ease of linking afterwards. Apart from that, it’s more tidy this way :)

To install *all* plugins, use the following commands [to be expanded]:
```
brew install --HEAD vsp-d2vsource vsp-ffms2 vsp-flash3kyuu_deband vsp-fmtconv vsp-mvtools vsp-znedi3
```
The `HEAD` parameter allows Homebrew to download the latest commit from GitHub. This is recommended since some plugins tend to have releases that are way older.

Linking
-------

Since most of the plugins do not appear under `/usr/local/lib/vapoursynth` automatically, doing so requires an extra step.
(It’s impossible to link during the installation via hombrew due to some restrictions when using third party taps).

To link the plugins, simply execute the following command:
```
/usr/local/Homebrew/Library/Taps/bl4cc4t/homebrew-vsplugins/linkvsp.sh
```

List of Plugins
---------------

- [AddGrain](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-AddGrain)
- [Bilateral](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Bilateral)
- [BM3D](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-BM3D)
- [CTMF](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-CTMF)
- [d2vsource](https://github.com/dwbuiten/d2vsource)
- [DCTFilter](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DCTFilter)
- [DeBlock](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DeBlock)
- [DeLogo](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DeLogo)
- [DePan](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DePan)
- [DFTTest](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DFTTest)
- [EEDI2](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-EEDI2)
- [EEDI3](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-EEDI3)
- [ffms2](https://github.com/FFMS/ffms2)
- [flash3kyuu_deband](https://github.com/SAPikachu/flash3kyuu_deband)
- [fmtconv](https://github.com/EleonoreMizo/fmtconv)
- [IT](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-IT)
- [mvtools](https://github.com/dubhater/vapoursynth-mvtools)
- [ReadMpls](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-ReadMpls)
- [Retinex](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Retinex)
- [SangNom](https://bitbucket.org/James1201/vapoursynth-sangnom)
- [SangNomMod](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-SangNomMod)
- [TCanny](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TCanny)
- [VagueDenoiser](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-VagueDenoiser)
- [W3FDIF](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-W3FDIF)
- [znedi3](https://github.com/sekrit-twc/znedi3)
