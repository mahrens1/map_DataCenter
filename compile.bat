@echo off

cd\
cd F:\map_DataCenter


echo Copying Files...
copy F:\map_DataCenter\id1\maps\DataCenter.map F:\map_DataCenter


echo Converting map...


echo --------------QBSP--------------
F:\map_DataCenter\tools\ericw-tools\bin\qbsp.exe DataCenter

echo --------------VIS---------------
F:\map_DataCenter\tools\ericw-tools\bin\vis.exe DataCenter

echo -------------LIGHT--------------
F:\map_DataCenter\tools\ericw-tools\bin\light.exe DataCenter

copy DataCenter.bsp F:\map_DataCenter\id1\maps
copy DataCenter.pts F:\map_DataCenter\id1\maps
copy DataCenter.lit F:\map_DataCenter\id1\maps
pause
cd\
cd F:\map_DataCenter
quakespasm  +map DataCenter
