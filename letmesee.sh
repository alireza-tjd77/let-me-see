#!/bin/bash
create_dirs(){
mkdir "letsee"
mkdir "letsee/images"
mkdir "letsee/pdf"
mkdir "letsee/music"
mkdir "letsee/videos"
mkdir "letsee/compressed"
mkdir "letsee/deb"
}

find_move(){
echo moving $1 files into letsee/$2 directories
find . -type f -not -path "./letsee/*" -iname "*$1" -exec mv "{}" letsee/$2 \; 
}
create_dirs
clear
echo current directory `pwd`
find_move ".jpg" "images"
find_move ".jpeg" "images"
find_move ".svg" "images"
find_move ".deb" "deb"
find_move ".png" "images"
find_move ".pdf" "pdf"
find_move ".mp3" "music"
find_move ".mp4" "videos"
find_move ".rar" "compressed"
find_move ".zip" "compressed"
find_move ".rar" "compressed"
find_move ".gz" "compressed"
