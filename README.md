# NLG-examples with GF in Haskell and Python

## Facts about countries: `countries/`

This is an example of GF-based natural language generation.
It generates descriptive texts from a table that contains basic facts about countries.
See `NLG-example-2021.pdf` for illustrations.

To test it yourself in Haskell,
```
cd countries
make
open CountriesEng.html
```
Requirements: GF, GF-RGL, GHC

To test in Python,
```
cd countries
make python
open countries_1.html
```
Requirements: GF, GF-RGL, python3, pgf package for Python

The countries example is based on data from http://www.geonames.org/

TODO:
- check all the Finnish and Swedish names (if possible, by extracting data)
- generalize the functions from countries to arbitrary types
- modularize the GF, Haskell, and Python code accordingly
- improve HTML layout, in particular in Python


## Converting integers to numerals: `transfer/`

This is a frequent task when converting data to text.
For example, if a user has 8 messages, one wants to generate "you have eight messages".

See `transfer/README.md` for details.



