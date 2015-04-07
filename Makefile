all: pdftex

resume.tex: resume.yaml
	pandoc --template templates/template.tex -f markdown -t latex -o resume.tex  \
	resume.yaml

pdftex: resume.tex
	latexmk -pdf resume.tex

clean:
	latexmk -C
	rm resume.tex
