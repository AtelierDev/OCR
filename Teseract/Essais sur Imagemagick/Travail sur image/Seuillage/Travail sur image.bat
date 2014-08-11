REM Essais de seuillage
convert in.png -auto-level _auto-level.png
convert in.png -auto-gamma _auto-gamma.png
convert in.png -monochrome _monochrome.png
convert in.png -black-threshold 10 -white-threshold 11  _threshold.png
convert in.png -black-threshold 50 -white-threshold 51  _threshold2.png
convert in.png -auto-level -auto-gamma -black-threshold 10 -white-threshold 11  _opti.png