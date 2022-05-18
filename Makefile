SHELL = /bin/sh
LATEXMK = latexmk
FLAGS = -xelatex -bibtex

all: two-conceptions pleasure-and-desire

two-conceptions: two-conceptions-of-happiness-kraut.tex good-lives.bib
	$(LATEXMK) $(FLAGS) two-conceptions-of-happiness-kraut

pleasure-and-desire: pleasure-and-desire-woolf.tex good-lives.bib
	$(LATEXMK) $(FLAGS) pleasure-and-desire-woolf

clean:
	- $(RM) build/*

.PHONY : clean
