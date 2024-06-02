#!/bin/bash

#1
mv personnages/super\ heros/hommes/sans\ cape/linuxman personnages/mascottes/tux

#2
mv personnages/super\ heros personnages/comics

#3
echo "Bruce Wayne hides behind this character." > personnages/comics/hommes/cape/batman

#4
echo "He lives in Gotham." >> personnages/comics/hommes/cape/batman

#5
echo "Homer Simpson hides behind this character." > personnages/comics/hommes/sans\ cape/daredevil

#6
echo "Daredevil is a blind comic character." > personnages/comics/hommes/sans\ cape/daredevil

#7
cat personnages/comics/hommes/cape/batman personnages/comics/hommes/sans\ cape/daredevil > personnages/mascottes/mixdarbat

#8 & 9
sudo useradd -m fanboy || true

#10
sudo cp -r personnages /home/fanboy

#11
sudo chown -R fanboy:fanboy /home/fanboy/personnages

#12
sudo ln -sf /home/fanboy/personnages /home/fanboy/persofanboy

#13
cp -r personnages /home/lucas/
sudo ln -sf /home/lucas/personnages /home/lucas/perso_lucas

#14
sudo apt install -y tree
sudo tree /home/fanboy/personnages > 14.txt

#15
grep -v "directories" 14.txt > 15.txt

#16
history_file_path=$HISTFILE
if [[ -f $history_file_path ]]; then
    grep -v "cd" $history_file_path | tail -n 250 > myhistory
fi