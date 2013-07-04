#!/bin/sh

rm *.aux *.bbl *.blg *.log *.out *.toc
pdflatex pbdNCDF4-guide.Rnw
bibtex pbdNCDF4-guide
pdflatex pbdNCDF4-guide.Rnw
pdflatex pbdNCDF4-guide.Rnw
pdflatex pbdNCDF4-guide.Rnw
rm *.aux *.bbl *.blg *.log *.out *.toc
