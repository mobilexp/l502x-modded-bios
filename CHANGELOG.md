# Change Log
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## 1.0.0 - 2017-05-05
### Added
- The project is now under the Unlicense.
- Thiblizz's BIOS Updater (TBU) `v1.0.0`, an all-in-one script that allows you to flash the BIOS safely.
- New logo based on GNU/Linux, using sRGB for the BIOS logo rendering which is more consistent, vector-based and pixel-perfect quality. The different logo variations has been made with Adobe Photoshop CC 2017 and Inkscape.

### Changed
- Unlocked advanced menus.
- Replaced the default Intel PXE ROM with iPXE (http://ipxe.org/).

  ```
  iPXE is the leading open source network boot firmware.
  It provides a full PXE implementation enhanced with additional features such as:
    - boot from a web server via HTTP
    - boot from an iSCSI SAN
    - boot from a Fibre Channel SAN via FCoE
    - boot from an AoE SAN
    - boot from a wireless network
    - boot from a wide-area network
    - boot from an Infiniband network
    - control the boot process with a script
  ```
  *Compiled from [ipxe.git master branch](http://git.ipxe.org/ipxe.git), latest commit `785389c2ba84870e003c23304ca88aa4ec1f144d` as of 2017-05-03, on Debian 8.7.1 (amd64).*
- Updated Processor Microcode Data File from `revision 0x23` to `revision 0x29`.
- Updated Intel VBIOS from `2104` to `2171` (properly patched and optimized).
- Updated Intel(R) RAID for SATA from `v10.0.0.1046` to `v11.2.0.1527` (includes the TRIM in RAID0 feature (CPL0's method).
- Updated Phoenix UEFI Winflash Utility from `1.5.50.0` to `1.5.66.0`.
- Updated Phoenix UEFI SHELL Flash Utility (PFlash.EFI) from `1.5.2.0` to `1.5.66.0`.

### Fixed
- NVRAM modules with bad checksum.
- Power Management module patched to be compatible with Mac OS X SpeedStep implementation (removed lock from MSR 0xE2 register).
- BIOS file names are 8.3-compliant (required for backward compatibility with DOS-based flashing process).
- Improved formatting of the BIOS Setup title for all languages (en-US, fr-FR, ja-JP, ko-KR).
- Removed bad values in the BIOS Setup for French and Japanese languages (empty and useless additional value, related to the supervisor password that should not exist).
- Translated bad string for the French language related to the Service Tag (was referring to the supervisor password).
- Various minor bug fixes and stability improvements (Intel/NVIDIA VBIOS related).
- Attempt to fix some problems related to IGD Configuration.
- Several code cleanups and optimizations.

### Security
- The Computrace Rootkit has been COMPLETELY removed (cleaned up BIOS Setup as well).
- Modified default OEM raw data.
