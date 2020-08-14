# Naruto: Gekitou Ninja Taisen 4

This repo contains a WIP decompilation of Naruto: Gekitou Ninja Taisen 4 (GNT4).

It builds the following DOL:

main.dol: `sha1: 0eb4cc3bd4c7363f8cb7baff79de7a964cbdeadb`

## Windows Prerequisites

1. Download and run the latest release of the [Windows devkitpro installer](https://github.com/devkitPro/installer/releases)
2. Run the executable located at `devkitPro\msys2\msys2.exe`
3. Update pacman by running the following command: `pacman -Syu`
4. Install the necessary dependencies by running the following command: `pacman -S python3-pip base-devel gcc vim cmake`
5. Change to the directory of where you cloned this repository and you are ready to build!

## Build Instructions

1. Obtain a clean DOL of GNT4 and place it in the build folder and name it `baserom.dol`.
2. Obtain a copy of the MWCC (Build 158) PowerPC and place it in tools/mwcc_compiler/1.1/ folder in tools/. (NOTE: This compiler's executables [mwcceppc.exe mwasmeppc.exe and mwldeppc.exe] can be installed with Codewarrior 1.1 for Gamecube, but no license or crack is provided with this project. Please obtain access to the compiler on your own.) If you are in the Gamecube/Wii Decompilation discord (not public at this time), download GC_COMPILERS.zip and extract it to tools/mwcc_compiler/.
3. Change to the directory of the tools folder and run `make`
4. Change back to the parent directory and run `make`

## Contributions

Contributions and PRs are welcome.
