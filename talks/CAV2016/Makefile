
SHELL = /bin/sh

mainfile = main.tex
subfiles = def.tex header.tex *.tex

default: pdf
all: pdf

.IGNORE:

hardcopy: $(mainfile:.tex=.ps)
	lpr -h $?
	@touch hardcopy

pdf: $(mainfile:.tex=.pdf) links

clean:
	/bin/rm -f *.dvi *.log *.ps *.bbl *.aux *.blg *.lof *.fff *.toc core 
	/bin/rm -f *.nav *.snm *.out *.vrb $(mainfile:.tex=.pdf)

links:
	if [ ! -h figs ]; then \
		ln -s ../../SIAM_PP14/talk/figs; \
	fi

$(mainfile:.tex=.pdf): $(mainfile) $(subfiles) links
	pdflatex $(mainfile)
	pdflatex $(mainfile)
#	bibtex $(mainfile:.tex=)
#	pdflatex $(mainfile)
