REM Essais sur le contrast de l'image
convert contrast-test.jpg -contrast  out3.jpg
convert contrast-test.jpg -contrast -contrast  out2.jpg
convert contrast-test.jpg -contrast -contrast -contrast out1.jpg
convert contrast-test.jpg +contrast  out4.jpg
convert contrast-test.jpg +contrast +contrast  out5.jpg
convert contrast-test.jpg +contrast +contrast +contrast out6.jpg