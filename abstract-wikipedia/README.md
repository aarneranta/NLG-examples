This directory contains an experiment for Abstract Wikipedia.
A tutorial text on NLG can be found in the sister directory doc/.
For convenience, it is made available in pdf, gf-nlg.pdf.

The example code from the tutorial is collected in subdirectories.
For a simple test run of the code in each of them, do as follows:
```
cd facts1
gf -make FactsEng.gf FactsFin.gf FactsGer.gf
python3 facts.py
cd ..
cd facts2
gf -make FactsEng.gf FactsFin.gf FactsGer.gf
python3 data_facts.py
python3 country_facts.py
cd ..
cd facts3
gf -make FactsEng.gf FactsFin.gf FactsGer.gf
python3 country_facts.py
python3 world_facts.py
cd ..
```
or simply
```
source quick_test.sh
```


