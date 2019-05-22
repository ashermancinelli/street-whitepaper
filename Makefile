SRC := street

.PHONY: all clean

all:
	pdflatex ${SRC}.tex
	bibtex ${SRC}
	pdflatex ${SRC}
	pdflatex ${SRC}

clean: all
	rm *.log
	rm *.aux
	rm *.blg
	rm *.bbl
	clear
	ls
