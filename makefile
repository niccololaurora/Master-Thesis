.DEFAULT_GOAL := all
.PHONY: all clean cleanall

MAIN = main

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex 
	pdflatex $(MAIN).tex
	biber $(MAIN)
	pdflatex $(MAIN).tex
	pdflatex $(MAIN).tex

clean:
	rm *.aux *.bbl *.bcf *.blg *.log *.out *.run.xml *.mtc* *.maf *.toc

cleanall: clean
	rm $(MAIN).pdf

