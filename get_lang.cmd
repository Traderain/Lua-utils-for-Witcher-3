@echo off

set w3dir=f:\lalala\The Witcher 3 Wild Hunt
set outdir=g:\tmp\w3\lang

set content=content0 content1 content2 content3 content4 content5 content6 content7 content8 content9 content10 content11 content12 patch0
set dlc=DLC1 DLC2 DLC3 DLC4


if .%1==. (
    set lang=ru
) else (
    set lang=%1
)

for %%i in (%content%) do (
    echo %%i
    lua inspect_w3strings.lua "%w3dir%\content\%%i\%lang%.w3strings" "%outdir%\%%i_%lang%.txt"
    echo.
)

for %%i in (%dlc%) do (
    echo %%i
    lua inspect_w3strings.lua "%w3dir%\DLC\%%i\content\%lang%.w3strings" "%outdir%\%%i_%lang%.txt"
    echo.
)