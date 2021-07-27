from data_facts import *
from country_facts import round_int
import pgf


def world_texts(factsys,data):
    factsys.grammar.embed("G")
    import G

    facts = []
    
    ncountries = len(data)
        
    doc = factsys.str2exp("Doc",
                ("there are {} countries in the world.").format(ncountries))
    facts.append(doc)
    
    largest = max(data, key=lambda c: int(c.population)).country

    doc = factsys.str2exp("Doc",
                ("{} has the largest population.").format(largest))

    facts.append(doc)
    return facts
    
        

def main():
    gr = pgf.readPGF('Countries.pgf')

    factsys = FactSystem('country capital area population continent currency',
                          lambda t: t.country,
                          gr,
                          'CountriesEng'
                        )
            
    factsys.run('countries.tsv',world_texts)

if __name__ == "__main__":
    main()
