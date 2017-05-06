@echo off
title Thiblizz's BIOS Updater (TBU) - Version 1.0.0
cls

rem This is free and unencumbered software released into the public domain.
rem
rem Anyone is free to copy, modify, publish, use, compile, sell, or
rem distribute this software, either in source code form or as a compiled
rem binary, for any purpose, commercial or non-commercial, and by any
rem means.
rem
rem In jurisdictions that recognize copyright laws, the author or authors
rem of this software dedicate any and all copyright interest in the
rem software to the public domain. We make this dedication for the benefit
rem of the public at large and to the detriment of our heirs and
rem successors. We intend this dedication to be an overt act of
rem relinquishment in perpetuity of all present and future rights to this
rem software under copyright law.
rem
rem THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
rem EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
rem MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
rem IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
rem OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
rem ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
rem OTHER DEALINGS IN THE SOFTWARE.
rem
rem For more information, please refer to <http://unlicense.org/>

:intro
cls
echo.
echo ------------------------------------------------------------------------------------------------
echo MMM:                                                                                        :MMM
echo MMM:           :////////////////:   ./////////:.`        .//:          `//:                 :MMM
echo MMM:           ymmmmmmNMMNmmmmmmy   :MMNdddddmNNNh+`     /MMh          .MMh                 :MMM
echo MMM:                  oMMo          :MMd      `-hMMs     /MMh          .MMh                 :MMM
echo MMM:                  oMMo          :MMd        .MMN     /MMh          .MMh                 :MMM
echo MMM:                  oMMo          :MMd       `oMMo     /MMh          .MMh                 :MMM
echo MMM:                  oMMo          :MMm++++osymmy:      /MMh          .MMh                 :MMM
echo MMM:                  oMMo          :MMNyyyyyhhddds:     /MMh          .MMh                 :MMM
echo MMM:                  oMMo          :MMd       `.oMMy    /MMh          -MMh                 :MMM
echo MMM:                  oMMo          :MMd          dMM-   -MMm          /MMs                 :MMM
echo MMM:                  oMMo          :MMd         .NMM.    dMM+        `dMM-                 :MMM
echo MMM:                  oMMo          :MMd......-:smMN/     .mMMy:.```-+mMN+                  :MMM
echo MMM:                  oMMo          :MMMNNNNNNNNdy+.       `+dNMNmmNNMmy-                   :MMM
echo MMM:                  `..`          `.........```            ``-:///:.`    v1.0.0           :MMM
echo MMM:                                                                                        :MMM
echo MMM:                                                                                        :MMM
echo MMM:                       http://thiblizz.xyz/  -  Coded by Thiblizz                       :MMM
echo MMM:                                                                                        :MMM
echo ------------------------------------------------------------------------------------------------
echo.
echo Hello %username%!
echo.
set "C="
set /P C=Are you sure you want to flash the BIOS? (yes/no):
if /I "%C%"=="yes" goto menu
if /I "%C%"=="no" goto noflash
goto intro

:menu
cls
echo.
echo Please close all applications before making a selection!
echo --------------------------------------------------------
echo.
echo ###################################################
echo #                                                 #
echo # PRESS 1 or 2 to select your task, or 3 to EXIT. #
echo #                                                 #
echo ###################################################
echo.
echo 1 - Flash the stock BIOS
echo 2 - Flash the undervolted BIOS
echo 3 - EXIT
echo.
set "C="
set /P C=Type 1, 2 or 3 then press ENTER:
if /I "%C%"=="1" goto flash-stock
if /I "%C%"=="2" goto flash-undervolted
if /I "%C%"=="3" goto eof
goto menu

:flash-stock
cls
echo.
echo Starting the flashing process...
set MY_PATH="%~dp0\windows\uefi-winflash\"
pushd "%~dp0\..\bios\"
%MY_PATH%WINFLASH /all /sa /cvar B_STOCK.WPH
exit

:flash-undervolted
cls
echo.
echo Starting the flashing process...
set MY_PATH="%~dp0\windows\uefi-winflash\"
pushd "%~dp0\..\bios\"
%MY_PATH%WINFLASH /all /sa /cvar B_UNDERV.WPH
exit

:noflash
color 4
cls
echo.
echo Tell me one thing, %username%.
echo.
echo Are you a one or a zero? That's the question you have to ask yourself.
echo Are you a yes or a no? Are you going to act or not?
echo.
echo Press any key to exit...
pause >nul
exit
