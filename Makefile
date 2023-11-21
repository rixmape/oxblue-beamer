CLASS = oxblue-beamer.cls
TEXMF = $(shell kpsewhich -var-value=TEXMFHOME)

install:
	cp -f $(CLASS) $(TEXMF)/tex/latex/$(CLASS)
