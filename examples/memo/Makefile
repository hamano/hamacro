LATEX=platex
#LATEX=uplatex
LATEX_OPT=-shell-escape -output-directory=tex
#PANDOC=pandoc
PANDOC=~/.cabal/bin/pandoc
PANDOC_OPT=--toc --listings

all: memo.pdf

memo.pdf:
	mkdir -p tex
	$(PANDOC) $(PANDOC_OPT) --template=memo.tmpl -o tex/memo.tex memo.md
	$(LATEX) $(LATEX_OPT) tex/memo.tex
	$(LATEX) $(LATEX_OPT) tex/memo.tex
	dvipdfmx -o memo.pdf tex/memo.dvi

clean:
	rm -rf tex *.pdf *.xbb
