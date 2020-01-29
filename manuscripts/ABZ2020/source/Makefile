all: main.pdf

main.pdf : main.tex sections/*.tex
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	pdflatex main.tex

clean:
	$(RM) main.pdf comment.cut *.toc *.out *.aux *.log *.blg *.bbl *.synctex.gz
