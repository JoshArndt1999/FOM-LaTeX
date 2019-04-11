SET dokument=main
call pdflatex -draftmode %dokument%.tex
call biber %dokument%
call makeindex -q %dokument%.nlo -s nomencl.ist -o %dokument%.nls
call pdflatex %dokument%.tex
call pdflatex %dokument%.tex
