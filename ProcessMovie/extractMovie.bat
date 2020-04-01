cd /D %rarPath%
FOR %%f in (*PSA*part1.rar) DO call :selectmoviefile "%%f"

IF %rarFilename%==0 (
echo No Compressed Movie File detected.
) ELSE (
"C:\Program Files\7-Zip\7z.exe" x %rarFilename% -o%destination%
echo Extracted %rarFilename%.
)

exit /b

:selectmoviefile
set "rarFilename=%~nx1"
exit /b