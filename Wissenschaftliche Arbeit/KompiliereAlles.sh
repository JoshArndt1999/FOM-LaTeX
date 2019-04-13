#!/bin/bash
dokument=main
pdflatex -draftmode $dokument.tex
biber $dokument
makeindex -q $dokument.nlo -s nomencl.ist -o $dokument.nls
pdflatex $dokument.tex
pdflatex $dokument.tex
