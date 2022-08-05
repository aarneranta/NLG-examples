import sys
sys.path.append('../facts2/')
from data_facts import *

import pgf

def round_int(s,r):
    e = len(s) - r
    p = 10**e
    i = (int(s)//p) * p
    return pgf.readExpr(str(i))


# explicit trees via embedded grammar module, takes 0.214s
def country_texts_embedded(factsys,data):
    factsys.grammar.embed("G")
    import G
    
    fields = factsys.fieldnames.split()
    
    facts = []

    for tuple in data:

        countr = factsys.str2exp("Name",tuple[0])
        cap    = factsys.str2exp('Name',tuple.capital)
        cont   = factsys.str2exp('Name',tuple.continent).unpack()[1][0]  #CDNAME
        curr   = factsys.str2exp('Name',tuple.currency)
        pop    = pgf.readExpr(str(tuple.population))
        are    = pgf.readExpr(str(tuple.area))

        doc = G.OneSentenceDoc(
                G.FactSentence(
                    G.KindFact(G.NameObject(countr),
                        G.ModifierKind(G.PropertyKind(G.cdProperty(cont),G.country_Kind),
                            G.NumericKindModifier(G.IntNumeric(pop),G.inhabitant_Kind)))))
        doc = G.AddSentenceDoc(doc,
                   G.FactSentence(G.AttributeFact(G.area_Attribute, G.PronObject(countr),
                                                      G.NumericValue(G.IntNumeric(are)))))
        doc = G.AddSentenceDoc(doc,
                 G.ConjSentence(
                   G.FactSentence(G.AttributeFact(G.capital_Attribute, G.NameObject(countr), G.NameValue(cap))),
                   G.FactSentence(G.AttributeFact(G.currency_Attribute, G.PronObject(countr), G.NameValue(curr)))))
        facts.append(doc)
    return facts

# trees via parser, takes 0.537s
def country_texts_parsed(factsys,data):
    factsys.grammar.embed("G")
    import G
    
    fields = factsys.fieldnames.split()
    
    facts = []

    for tuple in data:
        countr = factsys.data2lin("CName",tuple.country)
        cap    = factsys.data2lin('CName',tuple.capital)
        tcont  = G.cdProperty(factsys.str2exp('Name',tuple.continent).unpack()[1][0])
        cont   = factsys.exp2str(tcont)
        curr   = factsys.data2lin('Name',tuple.currency)
        pop    = factsys.data2lin("Numeric",tuple.population)
        are    = factsys.data2lin("Numeric",tuple.area)
        
        doc = factsys.str2exp("Doc",
                ("{} is a {} country with {} inhabitants. " 
                 "its area is {} . "
                 "the capital of {} is {} and its currency is {}.").format(countr,cont,pop,are,countr,cap,curr))
        
        facts.append(doc)
    return facts
    
        

def main():
    gr = pgf.readPGF('Countries.pgf')

    factsys = FactSystem('country capital area population continent currency',
                          gr,
                          'CountriesEng'
                        )
            
#    factsys.run('../data/countries.tsv',country_texts_parsed)
    factsys.run('../data/countries.tsv',country_texts_embedded)

if __name__ == "__main__":
    main()
