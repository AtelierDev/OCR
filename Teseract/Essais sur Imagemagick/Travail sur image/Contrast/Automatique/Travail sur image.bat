REM Essais sur le contrast de l'image
convert contrast-test.jpg -contrast-stretch 0 contrast-stretch.jpg
convert contrast-test.jpg -normalize normalize.jpg
convert contrast-test.jpg -auto-level auto-level.jpg
REM Essais sur l'auto gama pour tester si l'amélioration de gama sur une image noir blanc sert a quelquechose
convert contrast-test.jpg -auto-gamma auto-gamma.jpg