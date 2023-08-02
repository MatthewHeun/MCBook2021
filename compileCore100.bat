
"Rscript" knit_script.R

pdflatex Core100Summary.tex


REM from https://stackoverflow.com/questions/8385454/batch-files-list-all-files-in-a-directory-with-relative-paths

REM See also https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/forfiles

forfiles /M *.aux /c "cmd /c bibtex @relpath"

makeindex Core100Summary.idx
pdflatex Core100Summary.tex
pdflatex Core100Summary.tex
makeindex Core100Summary.idx 
pdflatex Core100Summary.tex 
start Core100Summary.pdf

REM ./clean.sh
.\cleanJVA.bat