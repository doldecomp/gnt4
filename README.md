
# Naruto : Gekitou Ninja Taisen 4 [![Discord Badge]][Discord]

*A* ***WIP*** *decompiled version of the game.*

<br>

---

## DOL

*The* ***DOL*** *built with this repository.*

**File** : `main.dol` <br>
**SHA1** : `0eb4cc3bd4c7363f8cb7baff79de7a964cbdeadb`

---

<br>

## Building

### Windows Prerequisites

1. Install **[DevKitPro]**.

2. Run `devkitPro\msys2\msys2.exe`.

3. Update **PacMan** :

    ```sh
    pacman -Syu
    ```

4. Install needed dependencies :

    ```sh
    pacman -S python3-pip base-devel gcc vim cmake
    ```

5. Clone this repository & navigate to it's root folder.

<br>

## Build Instructions

1. Obtain a clean **DOL** of `Gekitou Ninja Taisen 4` .

2. Place it in the root folder with `baserom.dol` as its name.

3. Obtain the **MWCC** PowerPC.

    *Build : `158`*

    *This compilers executables,* <kbd>mwcceppc.exe</kbd> , <kbd>mwasmeppc.exe</kbd><br>
    and <kbd>mwldeppc.exe</kbd> , can be installed with **CodeWarrior 1.1** <br> for the Gamecube, however no license nor crack is provided.

    Place it in the `/tools/mwcc_compiler/1.1/` folder.

    If you're on the **[Discord]**, download <br>
    <kbd>**[GC_WII_COMPILERS.zip][GC]**</kbd> and extract <br>
    it into `./tools/mwcc_compiler/` .

4. Navigate to the `tools` folder and run :

    ```sh
    make
    ```

5. Navigate to the ***root*** folder and run :

    ```sh
    make
    ```

<br>

---

<br>

## Contributions

*`Contributions` / `Pull Requests` are welcome !*


<!----------------------------------------------------------------------------->

[DevKitPro]: https://github.com/devkitPro/installer/releases
[Python3]: https://www.python.org/
[GCC]: https://gcc.gnu.org/
[GC]: https://cdn.discordapp.com/attachments/727918646525165659/917185027656286218/GC_WII_COMPILERS.zip

[Discord Badge]: https://img.shields.io/badge/Discord-7289DA?style=for-the-badge&logo=discord&logoColor=white
[Discord]: https://discord.gg/hKx3FJJgrV
