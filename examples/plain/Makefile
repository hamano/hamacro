LATEX=platex
#LATEX=uplatex
LATEX_OPT=-shell-escape -output-directory=tex
DVIPDFMX=dvipdfmx
#DVIPDFMX_OPT=-f ptex-hiragino

NAME=example
SRC=$(NAME).tex
PDF=$(NAME).pdf
PANDOC_OPT=--toc --listings

$(PDF): $(SRC)
	mkdir -p tex
	$(LATEX) $(LATEX_OPT) $(NAME)
	$(LATEX) $(LATEX_OPT) $(NAME)
	$(DVIPDFMX) $(DVIPDFMX_OPT) -o $(PDF) tex/$(NAME).dvi

clean:
	rm -rf tex *.pdf *.xbb
