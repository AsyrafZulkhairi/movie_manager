# movie_manager

## Overview
This repo consist of two different project:
* ProcessMovie - Organize direct download movies. Direct download movies that are divided into several rar files. ProcessMovie will extract the movie into folder group by month, rename the movie folder to be neat, and finally delete the movie rar files.
* Rename Movie Folder - Simply rename movie folder, especially from torrent.

## ProcessMovie
### Installation
Just download the `ProcessMovie` folder, and place it anywhere you want.
Additionally, it is recommended to send `processMovie.bat` to desktop as shortcut. To do this, right-click `processMovie.bat` > Send to > Desktop (create shortcut).

Then configure the movie rar files path and extract destination path by editing the `processMovie.bat`.
For movie rar files path, edit:
```
set rarPath="D:\Downloads\Compressed"
```
For extract destination path, edit:
```
set destination=D:\Videos\Latest MUVIS\
```
### Usage
After movie rar files download finished, just double-click the `processMovie.bat - Shortcut` created in installation.
Or just double-click the `processMovie.bat`.

## Rename Movie Folder
### Installation
Just download the `rename_movie_folder.py`, and place it where the movie folder you want to rename is located.
### Usage
Open command prompt from where the `rename_movie_folder.py` located.
To do this, open File Explorer and navigate to the path containing `rename_movie_folder.py`, click in address bar, type `cmd`, and press Enter.
Then type:
```bash
rename_movie_folder.py <movie_folder>
```
