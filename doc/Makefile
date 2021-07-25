all: pdf

pdf:
	txt2tags --toc -ttex gf-nlg.txt
	cat prelude gf-nlg.tex >tmp.tex
	runghc Unquote.hs <tmp.tex >gf-nlg.tex
	pdflatex gf-nlg.tex
	makeindex gf-nlg
	pdflatex gf-nlg.tex

