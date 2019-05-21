SRC := seminar

all:
	pdflatex ${SRC}.tex
	bibtex ${SRC}
	pdflatex ${SRC}
	pdflatex ${SRC}

clean: all
	rm *.log
	rm *.out
	rm *.aux
	clear
