
"C:\Program Files\R\R-4.1.2\bin\Rscript.exe" knit_script.R

pdflatex book.tex


REM from https://stackoverflow.com/questions/8385454/batch-files-list-all-files-in-a-directory-with-relative-paths

REM See also https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/forfiles

forfiles /m *.aux /c "cmd /c bibtex @relpath"

makeindex book.idx
pdflatex book.tex
pdflatex book.tex
makeindex book.idx 
pdflatex book.tex 
start book.pdf

REM ./clean.sh