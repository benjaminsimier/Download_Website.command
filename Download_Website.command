#! /bin/bash
path="$1";url="$2"
[[ $path == "" ]] && read -e -p "What folder path? " path
[[ $url == "" ]] && read -e -p "What the website URL? " url

wget -P $path -mpck --user-agent="" -e robots=off --wait 1 -E $url
