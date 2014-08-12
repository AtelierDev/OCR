@echo off
echo.
echo Test OCR en cours...
echo.
REM Extrait le texte d'une image

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
call ".\Travail sur image.bat" 
@echo on
REM Numérisation de l'image (image 0)
tesseract tessedit_write_images=true .\temp\_temp0.tif .\out\out0
REM Numérisation de l'image (image 1)
tesseract .\temp\_temp1.tif .\out\out1
REM Numérisation de l'image (image 2)
tesseract .\temp\_temp2.tif .\out\out2
@echo off
echo.
echo FIN DU SCRIPT. PRESSEZ ENTRER.
echo.
@echo off
pause