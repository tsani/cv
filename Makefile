.PHONY: all
all: Jacob-Errington.pdf

Jacob-Errington.pdf: cv.pdf
	@mv -v cv.pdf Jacob-Errington.pdf

cv.pdf: cv.tex
	@pdflatex cv
