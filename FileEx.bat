@echo off
title FileEx
color 1f
goto main

:main
goto title
goto script1

:title
echo ----- FileEx ------
echo v2.0.0
echo (c) forevertoo
echo ---------------------

:script1
echo thatgame - To play that game, i guess. (Not finished.)
echo changecolor - Change the color of FileEx
echo keybot - (KEYbot)BETA lets you ping any website
echo fileviewer - Show the content of a file
echo ---------------------
set fileex="__"
set /p fileex="FileEx> "
goto command

:command
if %fileex%==thatgame    (goto thatgame)
if %fileex%==fileviewer    (goto script2)
if %fileex%==f    (goto script2)
if %fileex%==keybot    (goto keybot)
if %fileex%==k    (goto keybot)
if %fileex%==changecolor    (goto changecolor)
if %fileex%==cc  (goto changecolor)
if %fileex%==reset    (color 1f && cls && goto main)
if %fileex%==r    (color 1f && cls && goto main)
if %fileex%==hub    (goto hub)
if %fileex%==h    (goto hub)
if %fileex%==ct    (goto colortest)
set fileex="__"
set /p fileex="FileEx> "
goto command

:script2
cls
echo -------------------
echo --- File Viewer ---
echo -------------------
set file="__"
set /p file="File ?> "
goto script3

:script3
cls
if not exist %file% (goto filerror)
if exist %file%     (goto filefound)

:filerror
echo %file% doesn't exist
echo Press any key to continue...
pause >nul
cls
goto main

:filefound
echo %file% exists
set mycommand="__"
set /p mycommand="Show the file's content? Y/N> "
if %mycommand%==Y    (goto typefile)
if %mycommand%==y    (goto typefile)
if %mycommand%==N    (exit)
if %mycommand%==n    (exit)
if %mycommand%==     (exit)
pause >nul

:typefile
cls
type %file%
type blankline.txt
echo -----------------------------
echo Press any key to continue...
pause >nul
cls
goto main

:changecolor
echo 5f - purple
echo 0f - dark mode
set mycolor="__"
set /p mycolor="The color ?> "
color %mycolor%
cls
goto main

:keybot
echo (KEYbot)
echo (This will run in your computer's language)
echo (Press any key to continue)
pause >nul
cls
echo -----------------------
echo (KEYbot)
echo -----------------------
set keyweb="__"
set /p keyweb="Website> "
goto keyscript2

:keyscript2
cls
goto loopkey1

:loopkey1
ping %keyweb%
echo ---------------
echo Press any key to return to the menu...
pause >nul
cls
goto main

:hub
cls
echo -----------------------
echo (HUB)alpha
echo -----------------------
echo journal - forevertoo's journal !
set hub="__"
set /p hub="Hub> "
goto hubscript1

:hubscript1
if %hub%==journal    (goto journal)

:journal
cls
type apps\journal.txt
type blankline.txt
echo ---------------------------------------
echo Press any key to reset FileEx
pause >nul
cls
goto main

:colortest
color 1f
echo /WARNING/
echo This will hurt your eyes.
timeout -1
color 2f
color 3f
color 4f
color 5f
color 6f
color 7f
color 8f
color 9f
color 0f
timeout 1
cls
goto main




:thatgame
cls
type apps\ThatGame\thatgametitle.txt
type blankline.txt
pause
cls
goto main