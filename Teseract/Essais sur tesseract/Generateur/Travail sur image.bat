REM nom du fichier image a analyser
set input=in2.jpg
REM convert %input% -auto-level -auto-gamma -white-threshold 90%    _out.tif
convert %input% -black-threshold 01    _out.tif
REM 