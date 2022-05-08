SHELL = /bin/sh
LATEXMK = latexmk
FLAGS = -xelatex -bibtex

all: two-conceptions

two-conceptions: two-conceptions-of-happiness-kraut.tex good-lives.bib
	$(LATEXMK) $(FLAGS) two-conceptions-of-happiness-kraut
clean:
	- $(RM) build/*

.PHONY : clean
