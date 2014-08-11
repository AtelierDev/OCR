REM nom du fichier image a analyser
set input=IN/in2.jpg
set output=OUT_IMG/
REM convert %input% -auto-level -auto-gamma -white-threshold 90%    _out.tif
convert %input% -black-threshold 01    %output%_out.tif
REM 