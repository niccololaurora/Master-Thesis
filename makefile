.DEFAULT_GOAL := all
.PHONY: all clean cleanall

MAIN = main

all: 
	pdflatex $(MAIN).tex
	biber $(MAIN)
	pdflatex $(MAIN).tex
	pdflatex $(MAIN).tex

pdf: 
	pdflatex $(MAIN).tex

clean:
	rm *.aux *.bbl *.bcf *.blg *.log *.out *.run.xml *.mtc* *.maf *.toc *.fdb_latexmk *.fls $(MAIN).pdf


