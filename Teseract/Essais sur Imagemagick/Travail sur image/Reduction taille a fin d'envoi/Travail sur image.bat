REM Essais de conversion et de compression a des fin d'envois a un serveur
REM resize 600x400 : changement de la taille
REM strip : suppression des commentaires et autres info additionnelles
REM quality 40 : qualite du jpg a 40%
REM interlace line : creation d'un jpg progressif -> Chargement par couche de qualite
convert BIG.bmp -resize 600x400 -strip -quality 40 -interlace line LIGHT.jpg
convert BIG.bmp LIGHT.png