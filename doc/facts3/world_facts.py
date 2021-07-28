import sys
sys.path.append('../facts2/')
from data_facts import *

import pgf


def world_texts(factsys,data):
    factsys.grammar.embed("G")
    import G

    facts = []
    
    ncountries = len(data)
    largestpop = max(data, key=lambda c: int(c.population)).country
    largestarea = max(data, key=lambda c: int(c.area)).country
    totalpop = sum([int(c.population) for c in data])//1000000

    facts.append(
        factsys.str2exp("Doc",
          ("there are {} countries in the world.").format(ncountries)))
    facts.append(factsys.str2exp("Doc",
          ("{} has the largest population and {} has the largest area.").format(largestpop,largestarea)))
    facts.append(factsys.str2exp("Doc",
          ("the population of the world is {} million.").format(totalpop)))
    
    return facts
    
        

def main():
    gr = pgf.readPGF('Countries.pgf')

    factsys = FactSystem('country capital area population continent currency',
                          lambda t: t.country,
                          gr,
                          'CountriesEng'
                        )
            
    factsys.run('../data/countries.tsv',world_texts)

if __name__ == "__main__":
    main()
