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
gf -make FactsEng.gf FactsFin.gf
python3 data_facts.py
python3 country_facts.py
cd ..

