@echo off
REM nom du fichier image a analyser
set input=in2.jpg
REM Modification d'image (image 0)
convert .\input\%input% -blur 0 .\temp\_temp0.tif
REM Modification d'image (image 1)
convert .\input\%input% -auto-level -auto-gamma -black-threshold 10 -white-threshold 11  .\temp\_temp1.tif
REM Modification d'image (image 2)
convert .\input\%input% -auto-level -auto-gamma -black-threshold 0% -white-threshold 0%  .\temp\_temp2.tif