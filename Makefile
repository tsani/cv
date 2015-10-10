.PHONY: all
all: Jacob-Errington.pdf

LATEX = pdflatex
DEPLOYDEST = ~/www/files

.PHONY: clean
clean:
	@rm -vf Jacob-Errington.pdf cv.pdf *.aux *.out *.log

.PHONY: deploy
deploy:
	@cp -v Jacob-Errington.pdf $(DEPLOYDEST)
	@cp -v cv.pdf $(DEPLOYDEST)

Jacob-Errington.pdf: cv.pdf
	@cp -v cv.pdf Jacob-Errington.pdf

cv.pdf: cv.tex
	@$(LATEX) cv
