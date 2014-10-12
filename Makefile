LATEX=platex
LATEX_OPT=-shell-escape -output-directory=tex
NAME=hamacro

all: $(NAME).pdf

clean:
	rm -rf *.log *.dvi *.bbl *.blg *.idx *.glo *.out *.aux *.toc

$(NAME).sty: $(NAME).ins $(NAME).dtx
	$(LATEX) $<

tex/$(NAME).dvi: $(NAME).dtx $(NAME).sty
	mkdir -p tex
	$(LATEX) $(LATEX_OPT) $<
	$(LATEX) $(LATEX_OPT) $<

$(NAME).pdf: tex/$(NAME).dvi
	dvipdfmx $<
