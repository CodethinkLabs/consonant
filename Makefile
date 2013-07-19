all: html pdf

pdf:
	pandoc --toc -S -s -N consonant.mdwn -o consonant.pdf

html:
	pandoc --toc -S -s -N consonant.mdwn -o consonant.html
