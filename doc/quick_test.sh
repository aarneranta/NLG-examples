cd facts1
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
cd ..

