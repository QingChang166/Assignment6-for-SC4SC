#! /usr/bin/env make

paper_html: paper_text
	pandoc paper.text -s --mathjax -o paper.html

paper_text: add_space
	cat preamble.txt litReview.txt approach.txt results.txt conclusion.txt > paper.text


add_space:
	echo " " >> litReview.txt
	echo " " >> approach.txt

.PHONY: clean

clean:
	rm -f paper.text
	rm -f pape.html

