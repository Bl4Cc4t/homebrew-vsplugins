homebrew-vsplugins
==================

This repository is a way to automate the installation of plugins for [VapourSynth](https://github.com/vapoursynth/vapoursynth).

Installation
------------

Having the package manager [Homebrew](https://brew.sh/) installed is mandatory (duh).

To begin, tap this repo: `brew tap bl4cc4t/vsplugins`.

To install a plugin, simply use `brew install --HEAD vsp-<pluginname>`

I added the prefix “vsp-” for the ease of linking afterwards. Apart from that, it’s more tidy this way :)

The `HEAD` parameter allows Homebrew to download the latest commit from GitHub. This is recommended since some plugins tend to have releases that are way older.

To install *all* plugins, use the following command:
```
brew install --HEAD vsp-addgrain vsp-awarpsharp2 vsp-bifrost vsp-bilateral vsp-bm3d vsp-cnr2 vsp-ctmf vsp-d2vsource vsp-damb vsp-dctfilter vsp-deblock vsp-deblockpp7 vsp-degrainmedian vsp-delogo vsp-depan vsp-descale vsp-dfttest vsp-eedi2 vsp-eedi3 vsp-ffms2 vsp-fieldhint vsp-fillborders vsp-flash3kyuu_deband vsp-fluxsmooth vsp-fmtconv vsp-histogram vsp-it vsp-knlmeanscl vsp-l-smash-works vsp-msmoosh vsp-mvtools vsp-nnedi3 vsp-nnedi3cl vsp-readmpls vsp-remapframes vsp-retinex vsp-sangnom vsp-sangnommod vsp-scrawl vsp-scxvid vsp-ssiq vsp-tcanny vsp-tcomb vsp-tdeintmod vsp-temporalsoften vsp-ttempsmooth vsp-vaguedenoiser vsp-vfrtocfr vsp-videoscope vsp-w3fdif vsp-wwxd
```

Linking
-------

Since most of the plugins do not appear under `/usr/local/lib/vapoursynth` automatically, doing so requires an extra step.
(It’s impossible to link during the installation via hombrew due to some restrictions when using third party taps).

To link the plugins, simply execute the following command:
```
/usr/local/Homebrew/Library/Taps/bl4cc4t/homebrew-vsplugins/linkvsp.sh
```

List of Plugins (and latest version known to work)
--------------------------------------------------

 Name                                                                               | HEAD    | Release
------------------------------------------------------------------------------------|---------|--------
[AddGrain](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-AddGrain)      | 2fb3503 | r7
------------------------------------------------------------------------------------|---------|--------
[awarpsharp2](https://github.com/dubhater/vapoursynth-awarpsharp2)                  | 886d4b7 | 4
------------------------------------------------------------------------------------|---------|--------
[bifrost](https://github.com/dubhater/vapoursynth-bifrost)                          | 3082823 | 2.2
------------------------------------------------------------------------------------|---------|--------
[Bilateral](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Bilateral)    | 5c246c0 |
------------------------------------------------------------------------------------|---------|--------
[BM3D](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-BM3D)              | 9b4c106 | r7
------------------------------------------------------------------------------------|---------|--------
[cnr2](https://github.com/dubhater/vapoursynth-cnr2)                                | 1f2c901 |
------------------------------------------------------------------------------------|---------|--------
[CTMF](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-CTMF)              | 8a34ade | r4.1
------------------------------------------------------------------------------------|---------|--------
- [d2vsource](https://github.com/dwbuiten/d2vsource)                                  |  | 1.1
- [damb](https://github.com/dubhater/vapoursynth-damb)                                |
- [DCTFilter](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DCTFilter)
- [DeBlock](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DeBlock)
- [DeblockPP7](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DeblockPP7)
- [degrainmedian](https://github.com/dubhater/vapoursynth-degrainmedian)
- [DeLogo](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DeLogo)
- [DePan](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DePan)
- [descale](https://github.com/Irrational-Encoding-Wizardry/vapoursynth-descale)
- [DFTTest](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DFTTest)
- [EEDI2](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-EEDI2)
- [EEDI3](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-EEDI3)
- [ffms2](https://github.com/FFMS/ffms2)
- [fieldhint](https://github.com/dubhater/vapoursynth-fieldhint)
- [fillborders](https://github.com/dubhater/vapoursynth-fillborders)
- [flash3kyuu_deband](https://github.com/SAPikachu/flash3kyuu_deband)
- [fluxsmooth](https://github.com/dubhater/vapoursynth-fluxsmooth)
- [fmtconv](https://github.com/EleonoreMizo/fmtconv)
- [histogram](https://github.com/dubhater/vapoursynth-histogram)
- [IT](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-IT)
- [KNLMeansCL](https://github.com/Khanattila/KNLMeansCL)
- [L-SMASH-Works](https://github.com/VFR-maniac/L-SMASH-Works)
- [msmoosh](https://github.com/dubhater/vapoursynth-msmoosh)
- [mvtools](https://github.com/dubhater/vapoursynth-mvtools)
- [nnedi3](https://github.com/dubhater/vapoursynth-nnedi3)
- [NNEDI3CL](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-NNEDI3CL)
- [ReadMpls](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-ReadMpls)
- [RemapFrames](https://github.com/Irrational-Encoding-Wizardry/Vapoursynth-RemapFrames)
- [Retinex](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Retinex)
- [SangNom](https://bitbucket.org/James1201/vapoursynth-sangnom)
- [SangNomMod](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-SangNomMod)
- [scrawl](https://github.com/dubhater/vapoursynth-scrawl)
- [scxvid](https://github.com/dubhater/vapoursynth-scxvid)
- [ssiq](https://github.com/dubhater/vapoursynth-ssiq)
- [TCanny](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TCanny)
- [tcomb](https://github.com/dubhater/vapoursynth-tcomb)
- [TDeintMod](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TDeintMod)
- [temporalsoften](https://github.com/dubhater/vapoursynth-temporalsoften)
- [TTempSmooth](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TTempSmooth)
- [VagueDenoiser](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-VagueDenoiser)
- [videoscope](https://github.com/dubhater/vapoursynth-videoscope)
- [W3FDIF](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-W3FDIF)
- [wwxd](https://github.com/dubhater/vapoursynth-wwxd)
- [znedi3](https://github.com/sekrit-twc/znedi3)
