SANS_FONT=Gillius ADF No2
MONO_FONT=Droid Sans Mono

all: html pdf

pdf:
	pandoc --toc -S -s -N						\
		--latex-engine=lualatex					\
		--variable papersize=A4					\
		--variable documentclass=scrreprt			\
		--variable fontsize=11pt				\
		--variable sansfont="$(SANS_FONT)"			\
		--variable mainfont="$(SANS_FONT)"			\
		--variable monofont="$(MONO_FONT)"			\
		consonant.mdwn -o consonant.pdf

html:
	pandoc --toc -S -s -N consonant.mdwn -o consonant.html
