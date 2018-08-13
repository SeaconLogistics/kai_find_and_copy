#!/bin/bash


# store the searchterm
searchterm="$1"

# setup paths
searchpath="/mnt/appdata/System/ict/in/8785427650000/*.edi"
targetpath="/mnt/seacon-share/Kewill/ashland/in/"

if [ $HOSTNAME = "Kai-Arnes-MacBook-Pro.local" ]; then
  echo "hi Kai on $HOSTNAME"
  searchterm="4559340"
  searchpath="./search_dir/*.edi"
  targetpath="./target_dir/"
fi

echo "searching for $searchterm in $searchpath"

cp `grep -l $searchterm $searchpath | xargs -0 -I'{}'` $targetpath