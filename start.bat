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
echo ] Downloading Hydraulic, Floodgate, Geyser, SpongeNeo...
echo.
powershell.exe -Command "Invoke-WebRequest -Uri "https://download.geysermc.org/v2/projects/hydraulic/versions/latest/builds/latest/downloads/neoforge" -OutFile "mods\hydralic-neoforge.jar"
powershell.exe -Command "Invoke-WebRequest -Uri "https://cdn.modrinth.com/data/bWrNNfkb/versions/ByP7SHZE/Floodgate-Neoforge-2.2.4-b36.jar" -OutFile "mods\Floodgate-Neoforge-2.2.4-b36.jar"
powershell.exe -Command "Invoke-WebRequest -Uri "https://download.geysermc.org/v2/projects/geyser/versions/latest/builds/latest/downloads/neoforge" -OutFile "mods\Geyser-Neoforge.jar"
powershell.exe -Command "Invoke-WebRequest -Uri "https://build.lenni0451.net/job/ViaProxy/lastSuccessfulBuild/artifact/build/libs/ViaProxy-3.3.4-SNAPSHOT.jar" -OutFile "other\ViaProxy.jar"
"
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
java -jar Arclight-NeoForge.jar && java -jar other\ViaProxy.jar
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
