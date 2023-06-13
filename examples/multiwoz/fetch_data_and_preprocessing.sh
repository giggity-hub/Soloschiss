#!/bin/bash
wget https://github.com/budzianowski/multiwoz/blob/master/data/MultiWOZ_2.0.zip\?raw\=true
mv 'MultiWOZ_2.0.zip@raw=true' MultiWOZ_2.0.zip
mkdir -p data
mv MultiWOZ_2.0.zip data/MultiWOZ_2.0.zip
cd data ; unzip MultiWOZ_2.0.zip ; mv 'MULTIWOZ2 2' multi-woz ; cd ..
python create_delex_data.py
python create_soloist_data.py