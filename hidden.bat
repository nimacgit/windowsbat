echo off
color 7

cls
echo.
echo.
echo  ******************************************************************************
echo  ******************************************************************************
echo  **                             new version virus                            **
echo  **                                                                          **
echo  **               ***             By Michael.B              ***              **
echo  **                                                                          **
echo  *********************************             ********************************
echo  *********************************             ********************************
echo.
echo                                ***   TAVAJOH   ***
echo.
echo  Be Hich Vajh computer ra khamoosh nakonid va garna ettelaat hard pak mishavad.
echo  Be Hich Vajh Dar Desktop chi zie ezafe nakonid.
echo  Be Hich Vajh Dar Driveha E Ke Program  Dar Anha Nasb Ast vared nashavid.
echo.
echo  :(  :)
echo      (Flash, USB, Ram, Hard ,Camera ,MP3/4 Pleyer)
echo   Dar Drivhayie Ke File "EXE" Mohemy Dar An Nadarid baz shavad.
echo.
echo  Aya Az edameye virus Motmaen Hastid? ( N / Y )
echo.
echo.
echo.
pause>nul
cls
set /a waite=0
:waiteup
set /a waite= %waite% + 1
if %waite%==500 (
goto :waitedown
) else (
cls
echo.
echo.
echo.
echo.
echo.
echo  ******************************************************************************
echo  ******************************************************************************
echo  **                                                                          **
echo  **                                                                          **
echo  **             virus actived  to cancel it wait to ask                      **
echo  **             Please wait..........                                        **
echo  **                                                                          **
echo  **                                                                          **
echo  ******************************************************************************
echo  ******************************************************************************
goto :waiteup
)
:waitedown

cls
set /a NUM=0

:ATRRIB
if %NUM%==1 attrib -a -r -s -h /s /d *.*
cls
set /a NUM= %NUM% + 1
echo.
echo.
echo.
echo.
echo.
echo                             Please wait ..........
echo.
echo.
echo.
echo.
echo.
echo.
echo                     canceling the virus                %NUM%%%
echo.
echo.
echo.
echo.
if %NUM%==100 (
set /a NUM=0
goto EXE
)
goto ATRRIB

:EXE