BUILD_DIR=build
LATEX=uplatex
LATEX_OPT=-shell-escape -output-directory=$(BUILD_DIR)
DVIPDFMX=dvipdfmx
#DVIPDFMX_OPT=-f otf-up-hiragino
DVIPDFMX_OPT=-f noto
NAME=hamacro

all: $(NAME).pdf

clean:
	rm -rf $(BUILD_DIR) *.xbb

$(NAME).sty: $(NAME).ins $(NAME).dtx
	$(LATEX) $<

$(BUILD_DIR)/$(NAME).dvi: $(NAME).dtx $(NAME).sty example.tex
	mkdir -p $(BUILD_DIR)
	$(LATEX) $(LATEX_OPT) $<
	$(LATEX) $(LATEX_OPT) $<

$(NAME).pdf: $(BUILD_DIR)/$(NAME).dvi
	$(DVIPDFMX) $(DVIPDFMX_OPT) $<
