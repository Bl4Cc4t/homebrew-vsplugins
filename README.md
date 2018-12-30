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
brew install --HEAD vsp-addgrain vsp-awarpsharp2 vsp-bifrost vsp-bilateral vsp-bm3d vsp-cnr2 vsp-ctmf vsp-d2vsource vsp-damb vsp-dctfilter vsp-deblock vsp-deblockpp7 vsp-degrainmedian vsp-delogo vsp-descale vsp-dfttest vsp-eedi2 vsp-eedi3 vsp-ffms2 vsp-fieldhint vsp-fillborders vsp-flash3kyuu_deband vsp-fluxsmooth vsp-fmtconv vsp-histogram vsp-it vsp-knlmeanscl vsp-l-smash-works vsp-msmoosh vsp-mvtools vsp-nnedi3 vsp-nnedi3cl vsp-readmpls vsp-remapframes vsp-retinex vsp-sangnom vsp-scrawl vsp-scxvid vsp-ssiq vsp-tcanny vsp-tcomb vsp-tdeintmod vsp-temporalsoften2 vsp-ttempsmooth vsp-vaguedenoiser vsp-vfrtocfr vsp-videoscope vsp-vmaf vsp-w3fdif vsp-wwxd vsp-yadifmod vsp-znedi3
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

 Name                                                                                       | HEAD    | Release
--------------------------------------------------------------------------------------------|---------|--------
[AddGrain](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-AddGrain)              | 2fb3503 | r7
[awarpsharp2](https://github.com/dubhater/vapoursynth-awarpsharp2)                          | 886d4b7 | 4
[bifrost](https://github.com/dubhater/vapoursynth-bifrost)                                  | 3082823 | 2.2
[Bilateral](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Bilateral)            | 5c246c0 |
[BM3D](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-BM3D)                      | 9b4c106 | r7
[cnr2](https://github.com/dubhater/vapoursynth-cnr2)                                        | 1f2c901 |
[CTMF](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-CTMF)                      | 8a34ade | r4.1
[d2vsource](https://github.com/dwbuiten/d2vsource)                                          | 99b10e3 |
[damb](https://github.com/dubhater/vapoursynth-damb)                                        | 77a20a5 | 3
[DCTFilter](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DCTFilter)            | 9ffee26 | r2.1
[DeBlock](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DeBlock)                | 5ec9c9b | r6.1
[DeblockPP7](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DeblockPP7)          | 24bf2fc | r4.1
[degrainmedian](https://github.com/dubhater/vapoursynth-degrainmedian)                      | 0704888 | 1
[DeLogo](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DeLogo)                  | 597ad7f | 0.4
[descale](https://github.com/Irrational-Encoding-Wizardry/vapoursynth-descale)              | c211f99 | r2
[DFTTest](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DFTTest)                | 7184c67 | r4.1
[EEDI2](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-EEDI2)                    | 9d82bc5 | r7.1
[EEDI3](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-EEDI3)                    | efcba5f | r4
[ffms2](https://github.com/FFMS/ffms2)                                                      | f3c6b00 | 2.23
[fieldhint](https://github.com/dubhater/vapoursynth-fieldhint)                              | 1e78532 | 3
[fillborders](https://github.com/dubhater/vapoursynth-fillborders)                          | 48707e1 | 1.0
[flash3kyuu_deband](https://github.com/SAPikachu/flash3kyuu_deband)                         | 9b896a6 | 2.0.0-1
[fluxsmooth](https://github.com/dubhater/vapoursynth-fluxsmooth)                            | f1c22a4 | 2
[fmtconv](https://github.com/EleonoreMizo/fmtconv)                                          | 394a360 | r20
[histogram](https://github.com/dubhater/vapoursynth-histogram)                              | f67ec10 | 2
[IT](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-IT)                          | 6fc9be8 |
[KNLMeansCL](https://github.com/Khanattila/KNLMeansCL)                                      | 27f9599 | 1.1.1
[L-SMASH-Works](https://github.com/VFR-maniac/L-SMASH-Works)                                | 3edd194 |
[msmoosh](https://github.com/dubhater/vapoursynth-msmoosh)                                  | e5a7221 | 1.1
[mvtools](https://github.com/dubhater/vapoursynth-mvtools)                                  | 876dfb1 | 20
[nnedi3](https://github.com/dubhater/vapoursynth-nnedi3)                                    | 8c35822 | 12
[NNEDI3CL](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-NNEDI3CL)              | c3120d5 | r7.2
[ReadMpls](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-ReadMpls)              | 2a0f835 | r3
[RemapFrames](https://github.com/Irrational-Encoding-Wizardry/Vapoursynth-RemapFrames)      | 8669000 |
[Retinex](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Retinex)                | f7abea5 | r4
[SangNom](https://bitbucket.org/James1201/vapoursynth-sangnom)                              | 5a00bb6 |
[scrawl](https://github.com/dubhater/vapoursynth-scrawl)                                    | 1e16ea5 | 1.0
[scxvid](https://github.com/dubhater/vapoursynth-scxvid)                                    | 48817c0 | 1
[ssiq](https://github.com/dubhater/vapoursynth-ssiq)                                        | 30b3a47 | 1.0
[TCanny](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TCanny)                  | 88c9623 | r11
[tcomb](https://github.com/dubhater/vapoursynth-tcomb)                                      | 48108a0 | 3
[TDeintMod](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TDeintMod)            | 96418f0 | r10.1
[temporalsoften2](https://github.com/dubhater/vapoursynth-temporalsoften2)                  | 97e4817 | 1
[TTempSmooth](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TTempSmooth)        | 67df78f | r3.1
[VagueDenoiser](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-VagueDenoiser)    | f925f1a | r2
[VMAF](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-VMAF)                      | 7b1cd3c | r2.1
[VFRToCFR](https://github.com/Irrational-Encoding-Wizardry/Vapoursynth-VFRToCFR)            | 6c8cd2b |
[videoscope](https://github.com/dubhater/vapoursynth-videoscope)                            | 527b9b0 | 1.0
[W3FDIF](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-W3FDIF)                  | 8aecb6c | r1
[wwxd](https://github.com/dubhater/vapoursynth-wwxd)                                        | a587086 |
[Yadifmod](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Yadifmod)              | 8aad01a | r10.1
[znedi3](https://github.com/sekrit-twc/znedi3)                                              | 815beb9 |
