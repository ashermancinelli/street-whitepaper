arxiv_src := arxiv
vanilla_src := vanilla
handout_src := handout

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

handout:
	pdflatex ${handout_src}

all: prod handout clean 

clean:
	rm *.log
	rm *.aux
	rm *.blg
	rm *.bbl
	clear
	ls
