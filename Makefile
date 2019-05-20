SRC := seminar.tex

all:
	pdflatex ${SRC}
	bibtex references
	pdflatex ${SRC}
	pdflatex ${SRC}

clean:
	rm *.log
	rm *.out
	rm *.aux
	clear
