thesis: draft
	pdflatex -halt-on-error -shell-escape thesis.tex > latex.txt
	makeglossaries thesis > glossaries.txt
	pdflatex -shell-escape thesis.tex > latex.txt
	make clean
	cp thesis.pdf "A Versatile Platform for Practical Programming Exercises in Massive Open Online Courses.pdf"

clean:
	rm bibtex.txt glossaries.txt latex.txt thesis.aux thesis.bbl thesis.blg thesis.glg thesis.glo thesis.gls thesis.ist thesis.lof thesis.log thesis.lol thesis.lot thesis.toc

draft:
	ruby convert.rb
	pdflatex -halt-on-error -shell-escape thesis.tex > latex.txt
	bibtex thesis > bibtex.txt
