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
echo "satk=9 sdef=6 spd=4" > omanyte1
echo "Тип диеты Herbivore" > sewaddle0
echo "Тип диеты 
Herbivore" > wobbuffet
echo "Тип днеты Omnivore" > smoochum
echo "Способности Fake
Out Helping Hand Tackle Foresight" > tyrogue5
# Chmod
echo 'Start P2'
chmod 573 fraxure2
chmod 660 fraxure2/larvitar
chmod 400 fraxure2/seadra
chmod 006 fraxure2/chikorita
chmod a+rwx,g-r fraxure2/starmie
chmod 711 fraxure2/toxicroak
chmod u=rw,g-rwx,o=r fraxure2/feebas
chmod u=rx,g=w,o=r manectric9
chmod 664 manectric9/palpitoad
chmod u=rwx,g=rx,o=w manectric9/weedle
chmod 551 manectric9/metapod		
chmod a=rwx,u-w manectric9/shellder
chmod 620 omanyte1
chmod a=r sewaddle0
chmod 736 simipour0
chmod 044 wobbuffet
chmod 755 simipour0/gyarados
chmod a=rwx,g-r simipour0/dugtrio
chmod 604 smoochum
chmod 375 simipour0/phanpy
chmod a=r tyrogue5

	
#printResults After P2
echo 'After P2'
ls -lR


#copies and Links
echo 'Start P3'

ln tyrogue5 simipour0/smoochumtyrogue

#Another way rsync -Rr simipour0 simipour0/phanpy
#cp -r simipour0 simipour0/phanpy #->it does not work, can't copy the new file smoochumtyrogue with the link to tyrogue5
#FIX "'simipour0 / phanpy' cannot be accessed: Permission denied"
chmod u+r simipour0/phanpy 
#/FIX
#cp -r simipour0 /tmp/simipour0 && mv /tmp/simipour0 simipour0/phanpy #save in tmp with the smoochumtyrogue
cp -r simipour0 /tmp/${LOGNAME}_simipour0 && mv /tmp/${LOGNAME}_simipour0 simipour0/phanpy

#rsync -Rr simipour0 simipour0/phanpy


cp sewaddle0 simipour0/smoochumsewaddle

#FIX "Failed to create symlink 'fraxure2 / chikoritasewaddle': Permission denied"
chmod u+w fraxure2
#/FIX
ln -s sewaddle0 fraxure2/chikoritasewaddle


cp -p omanyte1 fraxure2/starmie

ln -s simipour0 Copy_31

#FIX fraxure2 / chikorita: Permission denied
chmod u+r fraxure2/chikorita
cat fraxure2/seadra fraxure2/chikorita > omanyte1_39

#Reset the fixes

#FIX "symlink fraxure2 and cat chikorita"
#chmod u-w fraxure2
#chmod u-r fraxure2/chikorita
#chmod u-r simipour0/phanpy 	
#/FIX


#printResults After P3
echo 'After P3'
ls -lR


echo 'Start P4'

echo '-> I)'
(find fraxure2/ | xargs wc -l | sort -n) 2>&1

echo '-> II)'

ls -li **/m* m* 2> /tmp/${LOGNAME}_err2 | sort -n -k 2 # p to print the slash for the directories 

echo '-> III)'

cat omanyte1 | grep -v vo

echo '-> IV)'
(cat **/*e *e |sort )  2> /dev/null

echo '-> V)'	

(ls simipour0 | sort)2>&1
echo '-> VI)'

(ls -lr manectric9 | sort -k 6) 2>&1


#Delete
#Удалить файл sewaddle0

rm -f sewaddle0

#FIX:"cannot delete 'lab0 / fraxure2 / chikorita': The file or directory does not exist"
#chmod u+w combusken8
#/FIX
#Удалить файл lab0/fraxure2/chikorita
#chmod 006 fraxure2/chikorita
rm -f fraxure2/chikorita

#удалить символические ссылки lab0/fraxure2/chikoritasewadd*
unlink fraxure2/chikoritasewadd*

#удалить жесткие ссылки lab0/simipour0/smoochumtyrog*
rm -f simipour0/smoochumtyrog*

#Удалить директорию fraxure2
#rm -rf fraxure2
#Удалить директорию lab0/manectric9/weedle
#FIX "can't delete 'manectric9 / weedle': Permission denied"
chmod u+w manectric9
#/FIX
rm -rf manectric9/weedle

