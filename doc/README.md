This directory contains a tutorial text on NLG in GF.
For convenience, it is made available in pdf, gf-nlg.pdf.

The example code is collected in subdirectories.
For a simple test run of the code in each of them, do as follows:
```
cd facts2
ln -s ../data/countries.tsv
gf -make FactsEng.gf FactsFin.gf
python3 facts.py
cd ..
cd facts2
ln -s ../data/countries.tsv
gf -make FactsEng.gf FactsFin.gf
python3 data_facts.py
python3 country_facts.py
cd ..
cd facts3
ln -s ../data/countries.tsv
ln -s ../facts2/data_facts.py
gf -make FactsEng.gf FactsFin.gf
python3 data_facts.py
python3 country_facts.py
```
or simply
```
source quick_test.sh
```

TODO
- more text in the document
- more code in subdirectories


