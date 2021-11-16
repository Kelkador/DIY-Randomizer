SET src_dir=C:\Users\kelka\Downloads\dsoft-backup\doujinsoft2\mio\game
SET work_dir=C:\Users\kelka\Downloads\dsoft-backup\doujinsoft2\mio\randomize

cd %work_dir%
del DIY_Patched
mkdir DIY_Unpacked
rmdir /s /q %work_dir%\ROM
rmdir /s /q %work_dir%\sav
del DIY_Patched.nds
ndstool.exe -v -x WarioWare.nds -9 DIY_Unpacked/arm9.bin -7 DIY_Unpacked/arm7.bin -y9 DIY_Unpacked/y9.bin -y7 DIY_Unpacked/y7.bin -d DIY_Unpacked/data -y DIY_Unpacked/overlay -t DIY_Unpacked/banner.bin -h DIY_Unpacked/header.bin
python warioware_randomizer.py --src %src_dir% --dest %work_dir% --count 185
cd %work_dir%\sav\
type *.mio > %work_dir%\2.bin
cd %work_dir%
type *.bin > DIY_Patched.sav
cd %work_dir%\ROM\
del /f /q %work_dir%\DIY_Unpacked\data\E\G\As\*
del /f /q %work_dir%\DIY_Unpacked\data\E\G\Jm\*
del /f /q %work_dir%\DIY_Unpacked\data\E\G\Mn\*
del /f /q %work_dir%\DIY_Unpacked\data\E\G\Nv\*
del /f /q %work_dir%\DIY_Unpacked\data\E\G\Ob\*
For /L %%i in (0 1 18)do if /I exist %%igame.mio copy %%igame.mio %work_dir%\DIY_Unpacked\data\E\G\Mn\
For /L %%i in (19 1 37)do if /I exist %%igame.mio copy %%igame.mio %work_dir%\DIY_Unpacked\data\E\G\Jm\
For /L %%i in (38 1 56)do if /I exist %%igame.mio copy %%igame.mio %work_dir%\DIY_Unpacked\data\E\G\As\
For /L %%i in (57 1 75)do if /I exist %%igame.mio copy %%igame.mio %work_dir%\DIY_Unpacked\data\E\G\Ob\
For /L %%i in (76 1 94)do if /I exist %%igame.mio copy %%igame.mio %work_dir%\DIY_Unpacked\data\E\G\Nv\
cd %work_dir%\DIY_Unpacked\data\E\G\Mn\
@Set "count=0"
@Set "count=0"
@For /F "Delims=" %%I In ('Dir /B/S/A-D-S "*.mio" 2^>NUL')Do @(
    For %%J In ("%%~pI.")Do @(Set /A count+=1
        SetLocal EnableDelayedExpansion
        Ren "%%I" "%%~nxJ!count!.GP"
        EndLocal))
ren "Mn19.GP" "Mn00.GP"
For /L %%i in (1 1 9)do if /I exist Mn%%i.GP ren "Mn%%i.GP" "Mn0%%i.GP"
cd %work_dir%\DIY_Unpacked\data\E\G\Jm\
@Set "count=0"
@For /F "Delims=" %%I In ('Dir /B/S/A-D-S "*.mio" 2^>NUL')Do @(
    For %%J In ("%%~pI.")Do @(Set /A count+=1
        SetLocal EnableDelayedExpansion
        Ren "%%I" "%%~nxJ!count!.GP"
        EndLocal))
ren "Jm19.GP" "Jm00.GP"
For /L %%i in (1 1 9)do if /I exist Jm%%i.GP ren "Jm%%i.GP" "Jm0%%i.GP"
cd %work_dir%\DIY_Unpacked\data\E\G\As\
@Set "count=0"
@For /F "Delims=" %%I In ('Dir /B/S/A-D-S "*.mio" 2^>NUL')Do @(
    For %%J In ("%%~pI.")Do @(Set /A count+=1
        SetLocal EnableDelayedExpansion
        Ren "%%I" "%%~nxJ!count!.GP"
        EndLocal))
ren "As19.GP" "As00.GP"
For /L %%i in (1 1 9)do if /I exist As%%i.GP ren "As%%i.GP" "As0%%i.GP"
cd %work_dir%\DIY_Unpacked\data\E\G\Ob\
@Set "count=0"
@For /F "Delims=" %%I In ('Dir /B/S/A-D-S "*.mio" 2^>NUL')Do @(
    For %%J In ("%%~pI.")Do @(Set /A count+=1
        SetLocal EnableDelayedExpansion
        Ren "%%I" "%%~nxJ!count!.GP"
        EndLocal))
ren "Ob19.GP" "Ob00.GP"
For /L %%i in (1 1 9)do if /I exist Ob%%i.GP ren "Ob%%i.GP" "Ob0%%i.GP"
cd %work_dir%\DIY_Unpacked\data\E\G\Nv\
@Set "count=0"
@For /F "Delims=" %%I In ('Dir /B/S/A-D-S "*.mio" 2^>NUL')Do @(
    For %%J In ("%%~pI.")Do @(Set /A count+=1
        SetLocal EnableDelayedExpansion
        Ren "%%I" "%%~nxJ!count!.GP"
        EndLocal))
ren "Nv19.GP" "Nv00.GP"
For /L %%i in (1 1 9)do if /I exist Nv%%i.GP ren "Nv%%i.GP" "Nv0%%i.GP"
cd %work_dir%
ndstool.exe -c DIY_Patched.nds -9 DIY_Unpacked/arm9.bin -7 DIY_Unpacked/arm7.bin -y9 DIY_Unpacked/y9.bin -y7 DIY_Unpacked/y7.bin -d DIY_Unpacked/data -y DIY_Unpacked/overlay -t DIY_Unpacked/banner.bin -h DIY_Unpacked/header.bin
rmdir /s /q %work_dir%\DIY_Unpacked
@pause