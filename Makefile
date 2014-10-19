LATEX=platex
#LATEX=uplatex
LATEX_OPT=-shell-escape -output-directory=tex
DVIPDFMX=dvipdfmx
#DVIPDFMX_OPT=-f ptex-hiragino
NAME=hamacro

all: $(NAME).pdf

clean:
	rm -rf tex *.xbb

$(NAME).sty: $(NAME).ins $(NAME).dtx
	$(LATEX) $<

tex/$(NAME).dvi: $(NAME).dtx $(NAME).sty
	mkdir -p tex
	$(LATEX) $(LATEX_OPT) $<
	$(LATEX) $(LATEX_OPT) $<

$(NAME).pdf: tex/$(NAME).dvi
	$(DVIPDFMX) $(DVIPDFMX_OPT) $<
