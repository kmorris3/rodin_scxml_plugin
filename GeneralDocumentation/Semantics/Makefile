all: SCXMLsemantics.pdf 

SCXMLsemantics.pdf : SCXMLsemantics.tex
	pdflatex SCXMLsemantics.tex
	bibtex SCXMLsemantics
	pdflatex SCXMLsemantics.tex
	pdflatex SCXMLsemantics.tex

clean: 
	$(RM) SCXMLsemantics.pdf *.toc *.out *.aux *.log *.blg *.bbl *.synctex.gz
