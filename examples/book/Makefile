BUILD_DIR=build
LATEX=uplatex
LATEX_OPT=-shell-escape -output-directory=$(BUILD_DIR)
PANDOC=pandoc
PANDOC_OPT=-f markdown+yaml_metadata_block --toc --top-level-division=chapter

all: book.pdf

book.pdf: book.md template.tex ../../hamacro.sty
	mkdir -p $(BUILD_DIR)
	$(PANDOC) $(PANDOC_OPT) --template=template.tex -o $(BUILD_DIR)/book.tex book.md
	$(LATEX) $(LATEX_OPT) $(BUILD_DIR)/book.tex
	$(LATEX) $(LATEX_OPT) $(BUILD_DIR)/book.tex
	dvipdfmx -o book.pdf $(BUILD_DIR)/book.dvi

clean:
	rm -rf $(BUILD_DIR) book.pdf
