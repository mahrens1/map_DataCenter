@echo off

cd\
cd F:\Quake_TrenchBroom


echo Copying Files...
copy F:\Quake_TrenchBroom\id1\maps\Zombie_test.map F:\Quake_TrenchBroom


echo Converting map...


echo --------------QBSP--------------
F:\Quake_TrenchBroom\tools\ericw-tools\bin\qbsp.exe Zombie_test

echo --------------VIS---------------
F:\Quake_TrenchBroom\tools\ericw-tools\bin\vis.exe Zombie_test

echo -------------LIGHT--------------
F:\Quake_TrenchBroom\tools\ericw-tools\bin\light.exe Zombie_test

copy Zombie_test.bsp F:\Quake_TrenchBroom\id1\maps
copy Zombie_test.pts F:\Quake_TrenchBroom\id1\maps
copy Zombie_test.lit F:\Quake_TrenchBroom\id1\maps
pause
cd\
cd F:\Quake_TrenchBroom
quakespasm  +map Zombie_test
