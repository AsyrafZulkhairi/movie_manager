cd D:\Downloads\Compressed
set delName=%rarFilename:~0,-5%
echo deleting %delName%*.rar

:: Delete the rar files
del %delName%*.rar

exit /b