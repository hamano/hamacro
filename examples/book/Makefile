LATEX=platex
#LATEX=uplatex
LATEX_OPT=-shell-escape -output-directory=tex
#PANDOC=pandoc
PANDOC=~/.cabal/bin/pandoc
PANDOC_OPT=-f markdown+yaml_metadata_block --toc --listings --chapters

all: book.pdf

book.pdf:
	mkdir -p tex
	$(PANDOC) $(PANDOC_OPT) --template=template.tex -o tex/book.tex book.md
	$(LATEX) $(LATEX_OPT) tex/book.tex
	$(LATEX) $(LATEX_OPT) tex/book.tex
	dvipdfmx -o book.pdf tex/book.dvi

clean:
	rm -rf tex *.pdf *.xbb
