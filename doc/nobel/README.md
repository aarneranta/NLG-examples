# NLG on Nobel price winners

## How to test
```
  gf -make NobelEng.gf NobelFin.gf NobelGer.gf
  python3 nobel.py
```
This will print out short texts about each Nobel prize winner, in English, Finnish, and German.

## The data

The data was acquired from Wikidata, URL ``https://w.wiki/3tEM``.
It was edited slightly to fit the format assumed in ``data_facts.FactSystem``.

## The functionality

The generated text will show, for each prize winner,
- what prize it was and when
- birth place and year
- death year, if applicable
- interesting aggregated facts, such as first woman and youngest, if applicable

Examples:

*Frédéric Joliot-Curie won the Nobel Prize in Chemistry in 1935. he was born in Paris in France in 1900. Joliot-Curie died in 1958. he was the youngest winner of the Nobel Prize in Chemistry.*

*Irène Joliot-Curie won the Nobel Prize in Chemistry in 1935. she was born in 13th arrondissement of Paris in France in 1897. Joliot-Curie died in 1956.*

*Marie Curie won the Nobel Prize in Chemistry in 1911. she was born in Warsaw in Poland in 1867. Curie died in 1934. Marie Curie was the first woman that won the Nobel Prize in Chemistry.*

*Marie Curie sai Nobelin kemianpalkinnon vuonna 1911. hän syntyi Varsovassa Puolassa vuonna 1867. Curie kuoli vuonna 1934. Marie Curie oli ensimmäinen nainen, joka sai Nobelin kemianpalkinnon.*

*Marie Curie sai Nobelin fysiikanpalkinnon vuonna 1903. hän syntyi Varsovassa Puolassa vuonna 1867. Curie kuoli vuonna 1934. Marie Curie oli ensimmäinen nainen, joka sai Nobelin fysiikanpalkinnon.*

*Frédéric Joliot-Curie erhielt den Nobelpreis für Chemie 1935. er
 wurde 1900 in Paris in Frankreich geboren. Joliot-Curie ist 1958 gestorben. er war der jüngste Preisträger des Nobelpreises für Chemie.*

*Irène Joliot-Curie erhielt den Nobelpreis für Chemie 1935. sie wurde
 1897 in 13th arrondissement of Paris in Frankreich geboren. Joliot-Curie ist 1956 gestorben.*

*Marie Curie erhielt den Nobelpreis für Chemie 1911. sie wurde 1867 in Warschau in Polen geboren. Curie ist 1934 gestorben. Marie Curie war die erste Frau, die den Nobelpreis für Chemie erhalten hat.*

Obviously, many more aggregations would be interesting.
We should also aggregate the two Nobel prizes of Marie Curie, which now appear as separate texts.



## Linguistic phenomena

The text illustrates following linguistic phenomena:
- pronouns inferred from the ``sex`` attribute in Wikidata
- just last name shown (by simply taking the last part, to be improved)
- choice of tenses: in German, vary imperfect and perfect



## TODO

- proper translations of birthplaces (those that are not contemporary states or their capitals)
- better formatting of the text
- more aggregations
- more facts, such as universities where the prize winners worked
- confirm and revise tenses


