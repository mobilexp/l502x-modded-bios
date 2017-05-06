<p align="center">
<a href="http://thiblizz.xyz/">
<img src="http://thiblizz.xyz/github/github-thiblizz-modded-bios.svg" alt="Thiblizz's L502X Modded BIOS" width="250">
</a>
</p>
<p align="center">Unleash the hidden beast inside your BIOS.</p>
<br />
<div align="center">
<a href="https://github.com/Thiblizz/l502x-modded-bios/zipball/master" target="_blank">
<img src="https://img.shields.io/badge/download-.zip-lightgrey.svg?style=flat-square" alt="Download .zip">
</a>
<a href="https://github.com/Thiblizz/l502x-modded-bios/tarball/master" target="_blank">
<img src="https://img.shields.io/badge/download-.tar.gz-lightgrey.svg?style=flat-square" alt="Download .tar">
</a>
<a href="CHANGELOG.md">
<img src="https://img.shields.io/badge/change-log-738bd7.svg?style=flat-square" alt="ChangeLog">
</a>
</div>

--------------------

[![Average time to resolve an issue](http://isitmaintained.com/badge/resolution/Thiblizz/l502x-modded-bios.svg)](http://isitmaintained.com/project/Thiblizz/l502x-modded-bios "Average time to resolve an issue")
[![Percentage of issues still open](http://isitmaintained.com/badge/open/Thiblizz/l502x-modded-bios.svg)](http://isitmaintained.com/project/Thiblizz/l502x-modded-bios "Percentage of issues still open")

## Introduction

Welcome to my project whose main purpose is to provide a *modded BIOS* for the *Dell XPS 15 L502X laptop*, in the idea of working on a stable basis in order to later doing the [coreboot](https://www.coreboot.org/) port.

Although modifying a BIOS is usually a complex procedure; community involvement is highly encouraged, so if you have any problems or have any suggestions please feel free to contact me.

If you wish to contribute ideas or code please make pull requests to my [GitHub repository](https://github.com/Thiblizz/l502x-modded-bios/pulls).


## Information

#### BIOS Details

| Model Name | BIOS Version | Last Update |
|:---------- |:------------ |:----------- |
L502X | Based on A12 | [Version 1.0.0 - 2017-05-05](CHANGELOG.md)

#### Voltage

| GPU Model | 2D Profile | 3D Profile |
|:--------- |:---------- |:---------- |
GT 525M - (Stock) | `0.85v` | `0.95v`
GT 525M - (Undervolted) | `0.85v` | `0.85v`
GT 540M - (Stock) | `0.83v` | `0.98v`
GT 540M - (Undervolted) | `0.83v` | `0.85v`

**Note:** The modded BIOS does not touch the GPU frequency in any way, it runs with the default clock rate, so if you are interested in overclocking or underclocking the GPU, please use software like [MSI Afterburner](https://www.msi.com/page/afterburner) (for Windows users) or [GLXOSD](https://github.com/nickguletskii/GLXOSD/) in conjunction with [Nvidiux](https://github.com/RunGp/Nvidiux) (for Linux users).


## Downloading

You can download the latest zipball by clicking [here](https://github.com/Thiblizz/l502x-modded-bios/zipball/master) or latest tarball by clicking [here](https://github.com/Thiblizz/l502x-modded-bios/tarball/master).

Preferably, you can download the project by cloning the [Git](https://github.com/Thiblizz/l502x-modded-bios) repository:

    git clone https://github.com/Thiblizz/l502x-modded-bios.git


## Flashing

--------------------

**Warning:** _Do not turn off your computer or disconnect from your power source while updating the BIOS or you may harm your computer. During the update, your computer will restart and you will briefly see a black screen._

--------------------

#### Windows only:

1. Run the `TBU.bat` file, within the `tools` directory, to begin the flashing process.

2. You will have to choose whether you want to flash the stock BIOS or the undervolted BIOS, otherwise you can simply abort the flashing process.

3. If you choose to flash the BIOS, the capsule will get loaded into the memory (remember to close all applications), then the system will reboot automatically and you will get into the EFI shell application that will update your BIOS. Lots of beeps later your machine will automatically reboot and your BIOS is updated.

4. Enjoy your new BIOS!

#### Alternative method:

I am actually working on another way to flash the modded BIOS for people who are using other operating systems.

The best solution was to use the Phoenix SecureCore Tiano™ PFlash utility (DOS-based), and then booting from a USB Flash Drive or CD-ROM, but sadly the utility fails to authenticate the modded BIOS image (as the binaries of the BIOS got modified after signing), which will result to have an invalid signature and the flashing process will abort. For more information on the UEFI Secure Boot, see [UEFI Winter Plugfest 2012](http://www.uefi.org/sites/default/files/resources/UEFI_Plugfest_2012Q1_v3_AMI.pdf) and [A Tour Beyond BIOS into UEFI Secure Boot](https://www.researchgate.net/profile/Vincent_Zimmer/publication/236201638_A_Tour_Beyond_BIOS_into_UEFI_Secure_Boot/links/0c960516f055515c9b000000.pdf).


## Reporting issues

Issues can be reported via the [Github issue tracker](https://github.com/Thiblizz/l502x-modded-bios/labels/Branch-master).

Please take the time to review existing issues before submitting your own to
prevent duplicates.

In addition, thoroughly read through the [issue tracker guide](docs/project-docs/issue-guide.md) to ensure
your report contains the required information. Incorrect or poorly formed
reports are wasteful and are subject to deletion.


## License

This is free and unencumbered software released into the public domain.

Read file [UNLICENSE](UNLICENSE).


## Disclaimer

Read file [DISCLAIMER](DISCLAIMER.md).


## Authors &amp; Contributors

Read file [THANKS](THANKS).
