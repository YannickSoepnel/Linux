#!/usr/bin/env bash
BASE_DIR=/home/yannick/


## Lezen van alle files
find "$BASE_DIR" |
 while IFS= read -r file; do
    ## Kijken welke files .jpg zijn
    if [[ $(file -b $file| awk '{print $1}') == "JPEG" ]] ; then
      filename="${file##*/}"
      #Uitlezen van creation week en maand
      creationweek=$(ls -l --time-style='+%U' "$file" | awk '{print $6}')
      creationmonth=$(ls -l --time-style='+%m-%y' "$file" | awk '{print $6}')

      #Aanmaken van de mappen, indien deze nog niet bestaan.
      [[ ! -d "$BASE_DIR/$creationmonth/$creationweek" ]] && mkdir -p "$BASE_DIR/$creationmonth/$creationweek";
      #Het verplaatsen van de foto's naar de nieuwe map.
      cp -a /$BASE_DIR/$filename /$BASE_DIR/$creationmonth/$creationweek

      #Het vergelijken van md5sum van beide jpg's
      find /$BASE_DIR/$filename -type f -exec md5sum {} + | sort -k 2 > file1.txt
      find /$BASE_DIR/$creationmonth/$creationweek/$filename -type f -exec md5sum {} + | sort -k 2 > file2.txt
      DIFF=$(diff file1.txt file2.txt)

      #Als md5sum klopt dan verwijdert hij het niet verplaatste bestand.
      if [ "$DIFF" != "" ]; then
        rm /$BASE_DIR/$filename
        echo "Gelukt!"
      fi
    fi
done
