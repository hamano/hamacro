LATEX=platex
#LATEX=uplatex
LATEX_OPT=-shell-escape -output-directory=tex
PANDOC=pandoc
PANDOC_OPT=-f markdown+yaml_metadata_block --toc --listings

NAME=memo

SRC=$(NAME).md
PDF=$(NAME).pdf
all: $(PDF)

$(PDF): $(SRC) template.tex
	mkdir -p tex
	$(PANDOC) $(PANDOC_OPT) --template=template.tex -o tex/tmp.tex $(SRC)
	sed -i -e 's/includegraphics{/includegraphics[width=\\columnwidth]{/g' tex/tmp.tex
	$(LATEX) $(LATEX_OPT) tex/tmp.tex
	$(LATEX) $(LATEX_OPT) tex/tmp.tex
	dvipdfmx -o $(PDF) tex/tmp.dvi

clean:
	rm -rf tex *.pdf *.xbb
