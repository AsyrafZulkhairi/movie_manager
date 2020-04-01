::@echo off
::echo %date:~7,2% is month
::echo %date:~10,4% is year

setlocal EnableDelayedExpansion
set m=100
for %%m in (January February March April May June July August September October November December) do (
   set /A m+=1
   set month[!m:~-2!]=%%m
)
rem Change tokens=2 for DD/MM/YYYY date format
for /F "tokens=2 delims=/"  %%m in ("%date%") do (
   set monthName=!month[%%m]!
)

set "lDestination=%destination%%date:~10,4%%date:~7,2% %monthName%\New folder"

endlocal & (
  set destination="%lDestination%"
)

echo Set destination as %destination%.
exit /b