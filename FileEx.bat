@echo off
title FileEx
color 1f
goto main

:main
goto title
goto script1

:title
echo ====== FileEx ======
echo v1.0.0
echo By haydenledean
echo ====================
echo Press any key to continue...
echo ====================
pause >nul

:script1
echo fileviewer - See a file !
echo changecolor - Change the color !
echo ====================
set fileex="__"
set /p fileex="FileEx> "
goto command

:command
if %fileex%==fileviewer    (goto script2)
if %fileex%==changecolor    (goto changecolor)
goto script1

:script2
cls
echo ===================
echo === File Viewer ===
echo ===================
set file="__"
set /p file="File ?> "
goto script3

:script3
cls
if not exist %file% (goto filerror)
if exist %file%     (goto filefound)

:filerror
echo %cd% don't exist
echo Press any key to continue...
pause >nul
cls
goto main

:filefound
echo %file% exist
echo Content :
set mycommand="__"
set /p mycommand="Type the file ? Y/N> "
if %mycommand%==Y    (goto typefile)
if %mycommand%==y    (goto typefile)
if %mycommand%==N    (exit)
if %mycommand%==n    (exit)
if %mycommand%==     (exit)
pause >nul

:typefile
cls
type %file%
echo ====================
echo Press any key to continue...
pause >nul
cls
goto main

:changecolor
set mycolor="__"
set /p mycolor="The color ?> "
color %mycolor%
cls
goto main