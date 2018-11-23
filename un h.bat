cls
set /a NUM=0

:ATRRIB
if %NUM%==1 attrib -a -r -s -h /s /d *.*
cls
set /a NUM= %NUM% + 1
if %NUM%==100 (
set /a NUM=0
goto EXE
)
goto ATRRIB

:EXE