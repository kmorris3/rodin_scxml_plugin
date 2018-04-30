all: SCXMLREF.pdf 

SCXMLREF.pdf : SCXMLREF.tex
	pdflatex SCXMLREF.tex
	bibtex SCXMLREF
	pdflatex SCXMLREF.tex
	pdflatex SCXMLREF.tex

	
clean: 
	$(RM) SCXMLREF.pdf *.toc *.out *.aux *.log *.blg *.bbl
