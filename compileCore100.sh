
/usr/local/bin/Rscript knit_scriptCore100.R

pdflatex Core100Summary.tex


bibtex Core100Summary.aux

makeindex Core100Summary.idx
pdflatex Core100Summary.tex
pdflatex Core100Summary.tex
makeindex Core100Summary.idx 
pdflatex Core100Summary.tex 

open Core100Summary.pdf

# Comment the following line if it helps to see the auxiliary files.
# ./clean.sh