@ECHO OFF

title RetardTweaker

cls

color 07
echo !!! MAKE SURE THIS IS RUN AS ADMINISTRATOR !!!
echo.
pause
cls

color 04
echo _____________________________________________________________________________________
echo  _ __    __   ______  __  _ __    __     ______ _     _   __    __  _   ,   __  _ __ 
echo ' )  )  /  `    /    /  /' )  )  /  )      /   ' )   /   /  `  /  /' ) /   /  `' )  )
echo  /__'  /__   __/    /__/  /__'  /  /    __/     / / /   /__   /__/  /_/   /__   /__' 
echo /  \_ (___, (_/    /  (_ /  \_ /__/_   (_/     (_(_/   (___, /  (_ /   ) (___, /  \_ 
echo _____________________________________________________________________________________
echo.
echo Made by Arsonix Studios
echo.

pause
cls

echo Run? (press a key to run, close window to exit)
echo.

pause
cls

echo Running (close to stop)
ipconfig /flushdns
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
echo.
echo If these say that the value is already there, just say "yes" or "y".
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize\"AppsUseLightTheme"=dword:00000000
reg add HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}\"System.IsPinnedToNameSpaceTree"=dword:0
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters\"IRPStackSize"=dword:00000032
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters\"SizReqBuf"=dword:00017424
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\"MaxFreeTcbs"=dword:00065536
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\"MaxUserPort"=dword:00065534
netsh interface tcp set global autotuning=restricted
set supplemental congestionprovider=ctcp
echo Defragging drives... (this may take a while)
defrag C: > defrag.log

pause
cls

echo Restart to take effect.
echo.
echo Thank you for using RetardTweaker by Arsonix Studios.
