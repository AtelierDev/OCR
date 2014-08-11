REM Essais d'insertion d'un text sur une image
set posX=100
set posY=110
set text=Morceau de poitrine humaine
set taille=100
set rouge=00
set bleu=00
set vert=00
set transparence=90
convert -font arial -pointsize %taille% -fill #%rouge%%vert%%bleu%%transparence% -draw "text %posX%,%posY% '%text%'" BREAST.png TAGED.jpg