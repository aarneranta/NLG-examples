all: pgf html-haskell

haskell: pgf html-haskell

python: pgf html-python

pgf:
	gf -make CountriesEng.gf CountriesFin.gf CountriesSwe.gf CountriesGer.gf CountriesFre.gf CountriesIta.gf

html-haskell:
	runghc Countries

html-python:
	python3 countries.py

