arxiv_src := arxiv
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

arxiv-edit:
	pdflatex "\def\isedit{1} \input{${arxiv_src}.tex}"
	bibtex ${arxiv_src}
	pdflatex "\def\isedit{1} \input{${arxiv_src}.tex}"
	pdflatex "\def\isedit{1} \input{${arxiv_src}.tex}"

arxiv-prod:
	pdflatex ${arxiv_src}
	bibtex ${arxiv_src}
	pdflatex ${arxiv_src}
	pdflatex ${arxiv_src}

edit: vanilla-edit arxiv-edit

prod: vanilla-prod arxiv-prod

all: prod clean

clean:
	rm *.log
	rm *.aux
	rm *.blg
	rm *.bbl
	clear
	ls
