#!/bin/bash

/usr/local/bin/Rscript knit_script.R

pdflatex book.tex
for auxfile in *.aux
do
    bibtex `basename $auxfile .aux`
done
makeindex book.idx
pdflatex book.tex
pdflatex book.tex
open book.pdf

# Comment the following line if it helps to see the auxiliary files.
# ./clean.sh