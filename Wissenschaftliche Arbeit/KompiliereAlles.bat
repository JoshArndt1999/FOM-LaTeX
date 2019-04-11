call pdflatex -draftmode main.tex
call biber main
call makeindex -q main.nlo -s nomencl.ist -o main.nls
call pdflatex main.tex
call pdflatex main.tex