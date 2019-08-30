LATEX=uplatex
LATEX_OPT=-shell-escape -output-directory=build
PANDOC=pandoc
PANDOC_OPT=-f markdown+yaml_metadata_block --toc --top-level-division=chapter

all: book.pdf

book.pdf: book.md template.tex ../../hamacro.sty
	mkdir -p build
	$(PANDOC) $(PANDOC_OPT) --template=template.tex -o build/book.tex book.md
	$(LATEX) $(LATEX_OPT) build/book.tex
	$(LATEX) $(LATEX_OPT) build/book.tex
	dvipdfmx -o book.pdf build/book.dvi

clean:
	rm -rf build book.pdf
