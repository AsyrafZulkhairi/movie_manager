::@echo off
set rarFilename=0
:: Set path of the compressed movie files (.rar)
set rarPath="D:\Downloads\Compressed"
:: Set path where movie folder is extracted grouped by month
set destination=D:\Videos\Latest MUVIS\

call %0\..\setFolderName.bat
call %0\..\extractMovie.bat
call %0\..\renameMovieFolder.bat
call %0\..\deleteRar.bat

echo Done!
pause
exit /b