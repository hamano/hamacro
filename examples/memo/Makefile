LATEX=uplatex
LATEX_OPT=-output-directory=tex
PANDOC=pandoc
PANDOC_OPT=-f markdown+yaml_metadata_block # --toc
DVIPDFMX=dvipdfmx
#DVIPDFMX_OPT=-f otf-up-hiragino
DVIPDFMX_OPT=-f ../../noto

NAME=memo

SRC=$(NAME).md
PDF=$(NAME).pdf
all: $(PDF)

$(PDF): $(SRC) template.tex
	mkdir -p tex
	$(PANDOC) $(PANDOC_OPT) --template=template.tex -o tex/$(NAME).tex $<
	sed -i -e 's/includegraphics{/includegraphics[width=\\columnwidth]{/g' tex/$(NAME).tex
	$(LATEX) $(LATEX_OPT) tex/$(NAME).tex
	$(LATEX) $(LATEX_OPT) tex/$(NAME).tex
	$(DVIPDFMX) $(DVIPDFMX_OPT) -o $(PDF) tex/$(NAME).dvi

clean:
	rm -rf tex *.pdf *.xbb
