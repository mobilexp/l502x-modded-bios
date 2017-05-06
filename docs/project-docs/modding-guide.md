# Modding Guide

This document provides information (mostly as links) on the structure of the modded BIOS and how to implement improvements. It will expand over time.

## Structure information

    0C7F41A9-0A6F-43F6-A0D9-1E2D01DBD7BE_1754   = Custom Logos.

    BF646364-2ECE-4D9F-84C7-C33F28689363_1607   = Strings BIOS Setup.

    E5D0BBDC-1BBC-49B7-A8B6-67AAF0A1CD9E_217    = Strings Splash Screen.

    C8AB0F4E-26FE-40F1-9579-EA8D30D503A4_1860   = Phoenix SecureCore Tiano™ ShellFlash utility.

    F7731B4C-58A2-4DF4-8980-5645D39ECE58        = Power Management module.

    PADDING_1847                                = Processor Microcode Data File.

    8C8BAE9C-4AEB-44DF-AB67-1E4D8242E964_1291   = NVIDIA VBIOS (GT 525M).

    55009181-E3AE-4C68-9D93-29758EA9E18C_1297   = NVIDIA VBIOS (GT 540M).

    29206FC2-9EAB-4612-ACA1-1E3D098FB1B3_1489   = Intel VBIOS.

    ED2DE537-7823-4CB1-B687-85BA9BBEF0B4_927    = Intel(R) RAID for SATA.

    6BAD07A6-1273-4B3F-A5D8-2FAA82E34FA0_1505   = PXE ROM.

#### Computrace's Rootkit

    17B3485F-9B3F-49A5-94BD-EAE249200C06        = Computrace Loader Module (CLM).

    *Apparently does not exist*                 = Adaptive Installer Module (AIM).

    A6DAF902-CE7E-4351-8A1F-D6D2331BC70F        = Communications Driver Agent (CDA).

    166CD554-8AAE-4617-8FDD-A2E3A5AFD89E        = Configuration Block (BIOS Setup).

## Burning iPXE into ROM

You will need to build an iPXE ROM image for your specific network card. For this, you need to know the relevant PCI vendor and device IDs. You can use `lspci -nn` to find the relevant IDs of your network card:
```bash
[user@machine ~]# lspci -nn
00:00.0 Host bridge [0600]: Intel Corporation 2nd Generation Core Processor Family DRAM Controller [8086:0104] (rev 09)
00:01.0 PCI bridge [0604]: Intel Corporation Xeon E3-1200/2nd Generation Core Processor Family PCI Express Root Port [8086:0101] (rev 09)
...
03:00.0 Network controller [0280]: Intel Corporation Centrino Wireless-N 1000 [8086:0083]
06:00.0 Ethernet controller [0200]: Realtek Semiconductor Co., Ltd. RTL8111/8168B PCI Express Gigabit Ethernet controller [10ec:8168] (rev 06)
                                                                                                                          /^^^^^^^^^
                                                                                   this is the PCI vendor and device ID _/
...
```

In this example, we see that the PCI vendor ID is **10ec** and the PCI device ID is **8168**. You can now build an iPXE ROM for your network card using:
```bash
make bin/vvvvdddd.rom
```

where **vvvv** and **dddd** are the PCI vendor and device IDs of your network card. For the above example, with a PCI vendor ID of **10ec** and a PCI device ID of **8168**, you would use:
```bash
make bin/10ec8168.rom
```

Make a note of the ROM image file (**bin/10ec8168.rom** in the above example).

## Links

#### Modules:

* [Latest Processor Microcode Data File](https://downloadcenter.intel.com/download/26400/Linux-Processor-Microcode-Data-File)
* [Latest Intel VBIOS](https://cloud.mail.ru/public/5iRi/eMU5hdv3w)
* [Latest Intel RAID ROM modules](http://www.win-raid.com/t7f13-AHCI-amp-RAID-ROM-Modules.html)
* [Latest Phoenix SecureCore Tiano™ ShellFlash utility (PFlash.efi)](https://goo.gl/MzyYv3)
* [Latest Phoenix SecureCore Tiano™ WinFlash utility](https://goo.gl/qf9WjP)
* [iPXE ROM](http://ipxe.org/)

#### Microcode References:

* http://inertiawar.com/microcode/
* http://www.intel.com/content/dam/www/public/us/en/documents/specification-updates/2nd-gen-core-family-mobile-specification-update.pdf

#### Computrace References:

* https://www.coresecurity.com/corelabs-research/publications/deactivate-rootkit
* https://www.coresecurity.com/system/files/publications/2016/05/Paper-Deactivate-the-Rootkit-AOrtega-ASacco.pdf
* https://www.coresecurity.com/system/files/publications/2016/05/Slides-Deactivate-the-Rootkit-ASacco-AOrtega.pdf
* https://securelist.com/analysis/publications/58278/absolute-computrace-revisited/
