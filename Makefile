all: html pdf

pdf:
	pandoc --toc -S -s -N						\
		--latex-engine=lualatex					\
		--variable papersize=A4					\
		--variable documentclass=scrreprt			\
		--variable fontsize=11pt				\
		--variable sansfont="Gillius ADF No2"			\
		--variable mainfont="Gillius ADF No2"			\
		--variable monofont="Droid Sans Mono"			\
		consonant.mdwn -o consonant.pdf

html:
	pandoc --toc -S -s -N consonant.mdwn -o consonant.html
