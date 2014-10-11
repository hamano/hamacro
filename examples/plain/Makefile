LATEX=platex
#LATEX=uplatex
LATEX_OPT=-shell-escape -output-directory=tex

NAME=example
SRC=$(NAME).tex
PANDOC_OPT=--toc --listings

example.pdf: $(SRC)
	mkdir -p tex
	$(LATEX) $(LATEX_OPT) $(NAME)
	$(LATEX) $(LATEX_OPT) $(NAME)
	dvipdfm -o $(NAME).pdf tex/$(NAME).dvi

clean:
	rm -rf tex *.pdf *.xbb
