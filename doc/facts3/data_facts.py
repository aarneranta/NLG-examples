import pgf
from extract_names import mkFun
from collections import namedtuple


class FactSystem:
    def __init__(self,tname,fnames,dkey,gr,ato):
        self.tuplename = tname
        self.fieldnames = fnames
        self.datakey = dkey
        self.grammar = gr
        self.atomic = ato # function to build a tree for an atomic datapoint (obj,attr,val)

    def get_data(self,filename):
        data = []
        Data = namedtuple(self.tuplename, self.fieldnames)
        file = open(filename)
        for line in file:
            fields = Data(*line.split('\t'))
            data.append(fields)
        return data

    def run(self,datafile,facts):
        gr = self.grammar
        data = sorted(list(self.get_data(datafile)))
        langs = list(gr.languages.values())
        for lang in langs:
            text = []
            for tree in facts(self,data):
                text.append(lang.linearize(tree))
            print('\n'.join(text))


def simple_facts(factsys,data):
    fields = factsys.fieldnames.split()    
    facts = []
    for tuple in data:
        for (attr,val) in [(fields[i],list(tuple)[i]) for i in range(1,len(fields))]:
            facts.append(factsys.atomic(factsys.datakey(tuple),attr,val))
    return facts

def mkInt(s):
    return pgf.readExpr(str(s))

def mkConst(s):
    return pgf.Expr(s,[])

def example_run():
    gr = pgf.readPGF('Countries.pgf')
    gr.embed('G')
    import G

    def value(val):
        if val.isdigit():
            return G.IntValue(mkInt(val))
        else:
            return G.NameValue(G.cName(mkConst(mkFun(val,'CName'))))

    def fact2tree(obj,attr,val):
        return G.AttributeFact(
                 mkConst(attr + '_Attribute'),
                 G.NameObject(G.cName(mkConst(mkFun(obj, 'CName')))),
                 value(val)
                )
        
 
    factsys = FactSystem('Country',
                         'country capital area population continent currency',
                          lambda t: t.country,
                          gr,
                          fact2tree
                        )
            
    factsys.run('countries.tsv',simple_facts)

if __name__ == "__main__":
    example_run()


