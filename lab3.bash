#!/bin/bash

#utworz kilka katalogow wraz z roznymi typami plikow (pustymi lub nie) 
mkdir -p ./kat1
mkdir -p ./kat1/kat2

touch ./kat1/plik1.txt
echo "tekst" > ./kat1/plik1.txt
chmod 100 ./kat1/plik1.txt
touch ./kat1/plik2.txt
chmod 020 ./kat1/plik2.txt
touch ./kat1/kat2/plik3.txt
echo "tekst2" > ./kat1/kat2/plik3.txt
chmod 100 ./kat1/kat2/plik3.txt
touch ./kat1/kat2/plik4.txt
chmod 004 ./kat1/kat2/plik4.txt
touch ./kat1/muzyka1.mp3
touch ./kat1/kat2/muzyka2.mp3

#wyszukaj pliki .txt, wlasciciel ma prawo wykonywania ale nie czytania
find ./kat1 -name "*.txt"  -perm /100 -and ! -perm /400  -print

#wyszukaj pliki .txt lub .mp3, o rozmiarze > 0
find ./kat1 \( -name "*txt" -o -name "*.mp3" \) -size +0 -type f -print



