all: html pdf

html:
	pandoc -t html5 -f markdown --citeproc --toc --number-sections --mathjax --metadata-file=assets/config.yaml --highlight-style tango --template assets/github.html5 --css assets/github.css article.md -o index.html

tex:
	pandoc -s -t latex -f markdown --citeproc --toc --number-sections --listings --metadata-file=assets/config.yaml article.md -o article.tex

pdf:
	pandoc -t pdf -f markdown --citeproc --toc --number-sections --listings --metadata-file=assets/config.yaml article.md -o article.pdf

