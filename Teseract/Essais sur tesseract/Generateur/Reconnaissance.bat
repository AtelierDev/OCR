@echo off
REM Extrait le texte d'une image

REM nom du fichier image a analyser
set input=in2.jpg
REM langue du dictionnaire de reconnaissance de tesseract
REM fra (pour le français)
REM eng (pour l'anglais)
REM deu (pour l'allemand)
REM spa (pour l'espagnol)
REM ita (pour l'italien)
REM nld (pour le néerlandais)
REM por (pour le portugais)
REM vie (pour le vietnamien)
REM deu-f (pour le vieil-allemand)
set lang=fra
@echo on
convert %input% -blur 0 _temp0.tif
convert %input% -auto-level -auto-gamma -black-threshold 10 -white-threshold 11  _temp1.tif
convert %input% -auto-level -auto-gamma -black-threshold 0% -white-threshold 0%  _temp2.tif
tesseract _temp1.tif out1
tesseract _temp2.tif out2
tesseract _temp0.tif out0
pause