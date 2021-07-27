import pgf
from collections import namedtuple


class FactSystem:
    def __init__(self,fnames,dkey,gr,lang1):
        self.fieldnames = fnames 
        self.datakey = dkey      # the key among fieldnames
        self.grammar = gr
        self.language1 = lang1   # the language in which entities are parsed to trees

    def get_data(self,filename):
        data = []
        Data = namedtuple('Data', self.fieldnames)
        file = open(filename)
        for line in file:
            fields = Data(*line.split('\t'))
            data.append(fields)
        return data

    def str2exp(self,cat,s):
        eng = self.grammar.languages[self.language1]
        try:
            pp = eng.parse(s,cat=pgf.readType(cat))
            _,e = pp.__next__()
            return e
        except:
            print("WARNING:","no", cat, "from", s)
            return pgf.Expr(s,[])

    def exp2str(self,exp):
        eng = self.grammar.languages[self.language1]
        return eng.linearize(exp)
        
    def run(self,datafile,fact_generator):
        gr = self.grammar
        data = sorted(list(self.get_data(datafile)))
        langs = list(gr.languages.values())
        for lang in langs:
            text = []
            for tree in fact_generator(self,data):
                text.append(lang.linearize(tree).capitalize())
            print('\n'.join(text))


def simple_facts(factsys,data):
    "for each tuple in data, generate an attribute fact sentence for each field"
    fields = factsys.fieldnames.split()    
    facts = []
    for tuple in data:
        for (attr,val) in [(fields[i],list(tuple)[i]) for i in range(1,len(fields))]:
            fact = pgf.Expr("AttributeFact", [
                    factsys.str2exp("Attribute",attr),
                    factsys.str2exp("Object",factsys.datakey(tuple)),
                    factsys.str2exp("Value",val)])
            facts.append(fact)
    return facts


def example_run():
    gr = pgf.readPGF('Countries.pgf')

    factsys = FactSystem('country capital area population continent currency',
                          lambda t: t.country,
                          gr,
                          'CountriesEng'
                        )
            
    factsys.run('countries.tsv',simple_facts)

if __name__ == "__main__":
    example_run()
