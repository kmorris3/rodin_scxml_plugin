all: main.pdf outline.pdf

main.pdf : main.tex
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	pdflatex main.tex

outline.pdf : outline.tex
	pdflatex outline.tex
	pdflatex outline.tex	

	
clean: 
	$(RM) main.pdf outline.pdf *.toc *.out *.aux *.log *.blg *.bbl
