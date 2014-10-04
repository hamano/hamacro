LATEX=platex -shell-escape
NAME=hamacro

all: $(NAME).pdf

clean:
	rm -rf $(NAME).dvi $(NAME).pdf

$(NAME).sty: $(NAME).ins $(NAME).dtx
	$(LATEX) $<

$(NAME).dvi: $(NAME).dtx $(NAME).sty
	$(LATEX) $<
	$(LATEX) $<

$(NAME).pdf: $(NAME).dvi
	dvipdfmx $<
