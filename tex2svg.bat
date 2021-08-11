pdflatex.exe -interaction=nonstopmode %~1.tex
gswin64c.exe -o %~1-resize.pdf -sDEVICE=pdfwrite -dDEVICEHEIGHTPOINTS=709 -dDEVICEWIDTHPOINTS=1001 -dFIXEDMEDIA -dPDFFitPage -f %~1.pdf
pdfcrop.exe %~1-resize.pdf
mutool.exe convert -o %~1.svg -F svg %~1-resize-crop.pdf
move "%~1"1.svg %~1.svg
del *.log
del *.pdf
del *.aux
del *.gz
