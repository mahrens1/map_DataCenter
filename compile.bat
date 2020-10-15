@echo off

cd\
cd F:\CCC Fall 2020\Game Design 2\map_DataCenter\map_DataCenter


echo Copying Files...
copy F:\CCC Fall 2020\Game Design 2\map_DataCenter\map_DataCenter\id1\maps\DataCenter.map F:\CCC Fall 2020\Game Design 2\map_DataCenter\map_DataCenter


echo Converting map...


echo --------------QBSP--------------
F:\CCC Fall 2020\Game Design 2\map_DataCenter\map_DataCenter\tools\ericw-tools\bin\qbsp.exe DataCenter

echo --------------VIS---------------
F:\CCC Fall 2020\Game Design 2\map_DataCenter\map_DataCenter\tools\ericw-tools\bin\vis.exe DataCenter

echo -------------LIGHT--------------
F:\CCC Fall 2020\Game Design 2\map_DataCenter\map_DataCenter\tools\ericw-tools\bin\light.exe DataCenter

copy DataCenter.bsp F:\CCC Fall 2020\Game Design 2\map_DataCenter\map_DataCenter\id1\maps
copy DataCenter.pts F:\CCC Fall 2020\Game Design 2\map_DataCenter\map_DataCenter\id1\maps
copy DataCenter.lit F:\CCC Fall 2020\Game Design 2\map_DataCenter\map_DataCenter\id1\maps
pause
cd\
cd F:\CCC Fall 2020\Game Design 2\map_DataCenter\map_DataCenter
quakespasm  +map DataCenter
