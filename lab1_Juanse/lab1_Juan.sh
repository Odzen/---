#!/bin/bash

# Enviroment

mkdir lab0
chmod 777 lab0
cd lab0
#Directories
mkdir -p fraxure2/{starmie,toxicroak}	 
mkdir -p manectric9/{weedle,metapod,shellder}
mkdir -p simipour0/{gyarados,dugtrio,phanpy}
#Files 
echo "satk=5 sdef=5 spd=4" > fraxure2/larvitar
echo "Возможности Overland=2 Surface=10 Underwater=10
	Jump=1 Power=3 Intelligence=4 Fountain=0 Gilled=0" > fraxure2/seadra
echo "Развитые способности Leaf Guard" > fraxure2/chikorita
echo "weigth=16.3 height=24.0 atk=2 def=2" > fraxure2/feebas
echo "weigth=37.5 height=31.0 atk=7 def=6" > manectric9/palpitoad
echo "satk=9 sdef=6 spd=4" > omanytel
echo "Тип диеты Herbivore" > sewaddle0
echo "Тип диеты 
Herbivore" > wobbuffet
echo "Тип днеты Omnivore" > smoochum
echo "Способности Fake
Out Helping Hand Tackle Foresight" > tyrogue5
# Chmod
chmod 573 fraxure2
chmod 660 fraxure2/larvitar
chmod 400 fraxure2/seadra
chmod 006 fraxure2/chikorita
chmod a+rwx,g-r fraxure2/starmie
chmod 711 fraxure2/toxicroak
chmod u=rw,g-rwx,o=r fraxure2/feebas
chmod a+x,u+r,g+w manectric9
chmod 664 manectric9/palpitoad
chmod u=rwx,g=rx,o=w manectric9/weedle
chmod 551 manectric9/metapod
chmod a=rwx,u-w manectric9/shellder
chmod 620 omanytel
chmod a=r sewaddle0
chmod 736 simipour0
chmod 044 wobbuffet
chmod 755 simipour0/gyarados
chmod a=rwx,g-r simipour0/dugtrio
chmod 604 smoochum
chmod 375 simipour0/phanpy
chmod a=r tyrogue5








