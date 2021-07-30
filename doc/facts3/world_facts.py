import sys
sys.path.append('../facts2/')
from data_facts import *

import pgf

the_world = 'the world' # as CountriesEng is language1

def continent_text(factsys,data,cont):
    factsys.grammar.embed("G")
    import G

    facts = []

    cont_data = [d for d in data if cont in [d.continent,the_world]]
    ncountries = len(cont_data)
    largestpop = max(cont_data, key=lambda c: int(c.population)).country
    largestarea = max(cont_data, key=lambda c: int(c.area)).country
    totalpop = sum([int(c.population) for c in cont_data])//1000000

    doc = factsys.str2exp("Doc",
            ("there are {} countries in {}.").format(ncountries,cont))
    doc = G.AddSentenceDoc(doc, factsys.str2exp("Sentence",
            ("the population of {} is {} million").format(cont,totalpop)))
    doc = G.AddSentenceDoc(doc, factsys.str2exp("Sentence",
            ("{} has the largest population and {} has the largest area").format(largestpop,largestarea)))

    billions = [c.country for c in cont_data if int(c.population) > 1000000000]
    if len(billions) == 1:
        objects = billions[0] + ' is the only country '
    elif len(billions) > 1:
        objects = ' , '.join(billions[:-1]) + ' and ' + billions[-1] + ' are the only countries '
    if billions:
        doc = G.AddSentenceDoc(doc, factsys.str2exp('Sentence',
                objects + 'with over a billion inhabitants'))

    return doc


def world_texts(factsys,data):
    texts = [continent_text(factsys,data,the_world)]
    for cont in {d.continent for d in data}:
        texts.append(continent_text(factsys,data,cont))
    return texts
    

def main():
    gr = pgf.readPGF('Countries.pgf')

    factsys = FactSystem('country capital area population continent currency',
                          gr,
                          'CountriesEng'
                        )
            
    factsys.run('../data/countries.tsv',world_texts)

if __name__ == "__main__":
    main()
