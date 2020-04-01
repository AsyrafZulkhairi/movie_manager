cd /D %destination%

:: /A:-D = NOT Folder, /B = Bare format (only the filenames)
for /f "delims=" %%a in ('dir /a:-d /b *.mkv') do call :kemas "%%a"

::pause
exit /b

:kemas
set "newname=%~nx1"
set "newname=%newname:.= %"
set "newname=%newname: mkv=%"
set "newname=%newname:720p=[720p]%"
set "newname=%newname:1080p=[1080p]%"
set "newname=%newname:2018=(2018)%"
set "newname=%newname:2019=(2019)%"
set "newname=%newname:2020=(2020)%"
set "newname=%newname:2021=(2021)%"
set "newname=%newname: HEVC-PSA=%"
set "newname=%newname: x265=%"
set "newname=%newname: 2CH=%"
set "newname=%newname: 6CH=%"
set "newname=%newname: 8CH=%"
set "newname=%newname: BrRip=%"
set "newname=%newname: BluRay=%"
set "newname=%newname: WEBRip=%"

:: Change Directory up a level
cd ..

:: Rename folder
ren "New folder" "%newname%"

echo Movie folder has been renamed.
exit /b