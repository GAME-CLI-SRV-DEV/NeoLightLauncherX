@echo off
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a")
echo.
call :ColorText 06 "Neo"
call :ColorText 09 "Light"
call :ColorText 0f "Launcher"
call :ColorText 0c "X"
echo.
echo [
call :ColorText 06 "Neo"
call :ColorText 09 "Light"
call :ColorText 0f "Launcher"
call :ColorText 0c "X"
echo ] Downloading Hydraulic, Floodgate, Geyser, Neoforge(Arclight), SpongeNeo...
echo.
echo [
call :ColorText 06 "Neo"
call :ColorText 09 "Light"
call :ColorText 0f "Launcher"
call :ColorText 0c "X"
echo ] Download Complete.
echo.
echo [
call :ColorText 06 "Neo"
call :ColorText 09 "Light"
call :ColorText 0f "Launcher"
call :ColorText 0c "X"
echo ] Initializing...
java -jar Arclight-NeoForge.jar && java -jar other/ViaProxy.jar
pause
echo.
echo [
call :ColorText 06 "Neo"
call :ColorText 09 "Light"
call :ColorText 0f "Launcher"
call :ColorText 0c "X"
echo ] 
call :ColorText 06 "Neo"
call :ColorText 09 "Light"
call :ColorText 0f "Launcher"
call :ColorText 0c "X"
echo  has ended
goto :end

:ColorText
<nul set /p "=%DEL%" > "%~2"
findstr /v /a:%1 /R "+" "%~2" nul
del "%~2" > nul
goto :eof

:end
echo.
pause
