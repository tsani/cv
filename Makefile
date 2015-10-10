.PHONY: all
all: Jacob-Errington.pdf

.PHONY: deploy
deploy:
	@cp -v Jacob-Errington.pdf ~/www/files
	@cp -v cv.pdf ~/www/files

Jacob-Errington.pdf: cv.pdf
	@cp -v cv.pdf Jacob-Errington.pdf

cv.pdf: cv.tex
	@pdflatex cv
