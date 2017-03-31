#!/bin/bash

#wyświetlenie wszystkich sciezek kanonicznych znajdujacych sie we wszystkich katalogach plikow o wielkosci>0
#i wyświetlenie wielkosci plikow (ograniczyc do 3 plików), w sciezce zamienic \ na /

mkdir -p ./kat1
mkdir -p ./kat1/kat2

touch ./kat1/plik1.txt
echo "tekst" > ./kat1/plik1.txt
touch ./kat1/plik2.txt
touch ./kat1/kat2/plik3.txt
echo "tekst2" > ./kat1/kat2/plik3.txt
touch ./kat1/kat2/plik4.txt
touch ./kat1/muzyka1.mp3
touch ./kat1/kat2/muzyka2.mp3


find ./kat1 \( -type f -size +0 \)| while read file
do
realpath "$file" | tr '/' '\\'
wc -c < "$file" 
done












   




