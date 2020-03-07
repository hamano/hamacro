BUILD_DIR=build
LATEX=uplatex
LATEX_OPT=-output-directory=$(BUILD_DIR)
PANDOC=pandoc
PANDOC_OPT=-f markdown+yaml_metadata_block # --toc
DVIPDFMX=dvipdfmx
#DVIPDFMX_OPT=-f otf-up-hiragino
DVIPDFMX_OPT=-f ../../noto

NAME=memo

SRC=$(NAME).md
PDF=$(NAME).pdf
all: $(PDF)

$(PDF): $(SRC) template.tex ../../hamacro.sty
	mkdir -p $(BUILD_DIR)
	$(PANDOC) $(PANDOC_OPT) --template=template.tex -o $(BUILD_DIR)/$(NAME).tex $<
	sed -i -e 's/includegraphics{/includegraphics[width=\\columnwidth]{/g' $(BUILD_DIR)/$(NAME).tex
	$(LATEX) $(LATEX_OPT) $(BUILD_DIR)/$(NAME).tex
	$(LATEX) $(LATEX_OPT) $(BUILD_DIR)/$(NAME).tex
	$(DVIPDFMX) $(DVIPDFMX_OPT) -o $(PDF) $(BUILD_DIR)/$(NAME).dvi

clean:
	rm -rf $(BUILD_DIR) *.pdf *.xbb
