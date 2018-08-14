#!/bin/bash


# store the searchterm
searchterm="$1"

# setup paths
searchpath="/mnt/appdata/System/ict/in/8785427650000/*.edi"
targetpath="/mnt/seacon-share/Kewill/ashland/in/"

if [ $HOSTNAME = "Kai-Arnes-MacBook-Pro.local" ]; then
  echo "hi Kai on $HOSTNAME"
  searchterm="4559340"
  # searchterm="onzin"
  searchpath="./search_dir/*.edi"
  targetpath="./target_dir/"
fi

echo "searching for $searchterm in $searchpath"

foundfilescount=$(grep -l $searchterm $searchpath|wc -l|sed 's/ //g')

case  "$foundfilescount" in
0)
  echo "No files found"
  read -p "Press enter to continue"
  ;;
*)
  echo "Found: -$foundfilescount- copying first one only"
  read -p "Press enter to continue"
  cp `grep -l -m1 $searchterm $searchpath` $targetpath
  ;;
esac

