.PHONY: all

all: pdf

pdf: main.tex
	latexmk -pdf -recorder -pdflatex="pdflatex -interactive=nonstopmode" -use-make main.tex

clean:
	rm -fv *.aux *.bbl *.blg *.log *.nav *.out *.snm *.toc *.dvi *.vrb *.bcf *.run.xml *.cut *.lo*
	latexmk -c

