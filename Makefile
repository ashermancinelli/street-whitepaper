SRC := seminar.tex

all:
	pdflatex ${SRC}
	# bibtex asexuality
	# pdflatex asexuality.tex
	# pdflatex asexuality.tex

clean:
	rm *.log
	rm *.out
	rm *.aux
	clear
