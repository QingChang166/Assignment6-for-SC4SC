#! /usr/bin/env make

all: paper_html paper_pdf

paper_pdf: paper_md
	pandoc paper.md -s --mathjax -f markdown+tex_math_double_backslash -o paper.pdf


paper_html: paper_md
	pandoc paper.md -s --mathjax -f markdown+tex_math_double_backslash -o paper.html


paper_md: add_space
	cat preamble.txt litReview.txt approach.txt results.txt conclusion.txt > paper.md


add_space:
	echo " " >> litReview.txt
	echo " " >> approach.txt

.PHONY: clean

clean:
	rm -f paper.md
	rm -f paper.pdf
	rm -f pape.html

