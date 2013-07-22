all: html pdf

pdf:
	pandoc --toc -S -s -N						\
		--latex-engine=lualatex					\
		--variable fontsize=11pt				\
		--variable sansfont="Droid Sans"			\
		--variable mainfont="Droid Sans"			\
		--variable monofont="Droid Sans Mono"			\
		consonant.mdwn -o consonant.pdf

html:
	pandoc --toc -S -s -N consonant.mdwn -o consonant.html
