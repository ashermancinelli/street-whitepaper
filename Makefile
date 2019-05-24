SRC := street

.PHONY: all clean edit print

edit:
	pdflatex "\def\isedit{1} \input{${SRC}.tex}"
	bibtex ${SRC}
	pdflatex "\def\isedit{1} \input{${SRC}.tex}"
	pdflatex "\def\isedit{1} \input{${SRC}.tex}"

prod:
	pdflatex ${SRC}
	bibtex ${SRC}
	pdflatex ${SRC}
	pdflatex ${SRC}

all: edit

clean: all
	rm *.log
	rm *.aux
	rm *.blg
	rm *.bbl
	clear
	ls
