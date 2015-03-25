DEPS := main.tex refer.bib vc-fig1a.xbb vc-fig1b.xbb vc-fig2.xbb

RM := rm -f

all: main.pdf

main.pdf main.dvi: $(DEPS)
	latexmk

%.xbb: %.png
	extractbb $<

.PHONY: clean
clean:
	$(RM) *.bb *.xbb *.bbl
	latexmk -C
