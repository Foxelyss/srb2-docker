#!/bin/env bash

mkdir base_game -p

wget 'https://github.com/STJr/SRB2/releases/download/SRB2_release_2.2.15/SRB2-v2215-Full.zip' -O srb2-full.zip
unzip srb2-full.zip -d base_game -f

rm base_game/*.dll
rm base_game/*.exe

cd SRB2
git submodule update --init --remote --recursive
