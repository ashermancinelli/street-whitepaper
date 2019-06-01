arvix_src := street
vanilla_src := vanilla

.PHONY: all clean edit print

vanilla-edit:
	pdflatex "\def\isedit{1} \input{${vanilla_src}.tex}"
	bibtex ${vanilla_src}
	pdflatex "\def\isedit{1} \input{${vanilla_src}.tex}"
	pdflatex "\def\isedit{1} \input{${vanilla_src}.tex}"

vanilla-prod:
	pdflatex ${vanilla_src}
	bibtex ${vanilla_src}
	pdflatex ${vanilla_src}
	pdflatex ${vanilla_src}

arvix-edit:
	pdflatex "\def\isedit{1} \input{${arvix_src}.tex}"
	bibtex ${arvix_src}
	pdflatex "\def\isedit{1} \input{${arvix_src}.tex}"
	pdflatex "\def\isedit{1} \input{${arvix_src}.tex}"

arvix-prod:
	pdflatex ${arvix_src}
	bibtex ${arvix_src}
	pdflatex ${arvix_src}
	pdflatex ${arvix_src}

edit: vanilla-edit arvix-edit

prod: vanilla-prod arvix-prod

all: edit prod clean

clean:
	rm *.log
	rm *.aux
	rm *.blg
	rm *.bbl
