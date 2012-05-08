default: tomkovic-vizualizacia-ads.pdf
tomkovic-vizualizacia-ads.pdf: *.tex literatura.bib obrazky/*
	xelatex tomkovic-vizualizacia-ads.tex
#	bibtex tomkovic-vizualizacia-ads
	biber tomkovic-vizualizacia-ads
	xelatex tomkovic-vizualizacia-ads.tex

clean:
	rm `find -name '*~'`
	rm -r *.aux
	rm -r *.log
	rm -r *.out
	rm -r *.bbl
	rm -r *.blg
